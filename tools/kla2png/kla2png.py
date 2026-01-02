#!/usr/bin/env python3
"""
Convert C64 Koala Painter .kla/.koa images to PNG with multiple palette support.

Supports 8 C64 color palettes from various sources including Pepto, Colodore,
emulators (VICE, CCS64, Frodo, PC64), and artist-tuned palettes.

Usage:
  python kla2png.py input.kla [output.png]
  python kla2png.py input.kla --palette 01_PEPTO_V3
  python kla2png.py --list-palettes
"""

from __future__ import annotations

import argparse
import pathlib
import sys

try:
    from PIL import Image, PngImagePlugin
except ImportError as exc:  # pragma: no cover
    raise SystemExit(
        "Pillow is required. Install with: python -m pip install pillow"
    ) from exc


# C64 Color Palette Registry
# Organized by category with metadata and RGB values for each palette
PALETTES = {
    # Category 01-04: Scientific/Calculated Palettes
    "01_PEPTO_V3": {
        "name": "Pepto v3 (PAL)",
        "category": "Scientific/Calculated",
        "description": "Modern pixel art standard, VIC-II voltage modeling",
        "source": "https://www.pepto.de/projects/colorvic/ (2001)",
        "rgb": [
            (0, 0, 0), (255, 255, 255), (104, 55, 43), (112, 164, 178),
            (111, 61, 134), (88, 141, 67), (53, 40, 121), (184, 199, 111),
            (111, 79, 37), (67, 57, 0), (154, 103, 89), (68, 68, 68),
            (108, 108, 108), (154, 210, 132), (108, 94, 181), (149, 149, 149)
        ]
    },
    "02_PEPTO_V2": {
        "name": "Pepto v2 (PAL Old)",
        "category": "Scientific/Calculated",
        "description": "Early Pepto revision with R1 chip luma calculations",
        "source": "VICE pepto-palold.vpl",
        "rgb": [
            (0, 0, 0), (255, 255, 255), (88, 41, 29), (145, 198, 213),
            (145, 92, 168), (88, 141, 67), (53, 40, 121), (184, 199, 111),
            (145, 111, 67), (67, 57, 0), (154, 103, 89), (53, 53, 53),
            (116, 116, 116), (154, 210, 132), (116, 102, 190), (184, 184, 184)
        ]
    },
    "04_VICE_INTERNAL": {
        "name": "VICE Internal",
        "category": "Scientific/Calculated",
        "description": "VICE emulator default palette",
        "source": "VICE vice.vpl",
        "rgb": [
            (0, 0, 0), (253, 254, 252), (190, 26, 36), (48, 230, 198),
            (180, 26, 226), (31, 210, 30), (33, 27, 174), (223, 246, 10),
            (184, 65, 4), (106, 51, 4), (254, 74, 87), (66, 69, 64),
            (112, 116, 111), (89, 254, 89), (95, 83, 254), (164, 167, 162)
        ]
    },

    # Category 10-13: CRT-Corrected Palettes
    "10_COLODORE": {
        "name": "Colodore",
        "category": "CRT-Corrected",
        "description": "Modern demos, warm/saturated, CRT-accurate",
        "source": "https://www.colodore.com/ by Pepto (2017)",
        "rgb": [
            (0, 0, 0), (255, 255, 255), (150, 40, 46), (91, 214, 206),
            (159, 45, 173), (65, 185, 54), (39, 36, 196), (239, 243, 71),
            (159, 72, 21), (94, 53, 0), (218, 95, 102), (71, 71, 71),
            (120, 120, 120), (145, 255, 132), (104, 100, 255), (174, 174, 174)
        ]
    },
    "11_DEEKAY": {
        "name": "DeeKay Artist-Tuned",
        "category": "CRT-Corrected",
        "description": "Punchy, nostalgic, artist-tuned for demo scene",
        "source": "DeeKay/Crest palette",
        "rgb": [
            (10, 10, 10), (255, 248, 255), (133, 31, 2), (101, 205, 168),
            (167, 59, 159), (77, 171, 25), (26, 12, 146), (235, 227, 83),
            (169, 75, 2), (68, 30, 0), (210, 128, 116), (70, 70, 70),
            (139, 139, 139), (142, 246, 142), (77, 145, 209), (186, 186, 186)
        ]
    },
    "12_PC64": {
        "name": "PC64 Emulator",
        "category": "CRT-Corrected",
        "description": "Early emulator style, very saturated",
        "source": "VICE pc64.vpl",
        "rgb": [
            (21, 21, 21), (255, 255, 255), (181, 33, 33), (115, 255, 255),
            (181, 33, 181), (33, 181, 33), (33, 33, 181), (255, 255, 33),
            (181, 115, 33), (148, 66, 33), (255, 115, 115), (115, 115, 115),
            (148, 148, 148), (115, 255, 115), (115, 115, 255), (181, 181, 181)
        ]
    },
    "13_CCS64": {
        "name": "CCS64 Emulator",
        "category": "CRT-Corrected",
        "description": "Bright, warm CRT look from CCS64 emulator",
        "source": "VICE ccs64.vpl",
        "rgb": [
            (16, 16, 16), (255, 255, 255), (224, 64, 64), (96, 255, 255),
            (224, 96, 224), (64, 224, 64), (64, 64, 224), (255, 255, 64),
            (224, 160, 64), (156, 116, 72), (255, 160, 160), (84, 84, 84),
            (136, 136, 136), (160, 255, 160), (160, 160, 255), (192, 192, 192)
        ]
    },

    # Category 20-22: High-Contrast Palettes
    "21_FRODO": {
        "name": "Frodo Emulator",
        "category": "High-Contrast",
        "description": "Strong primaries for debugging",
        "source": "VICE frodo.vpl",
        "rgb": [
            (0, 0, 0), (255, 255, 255), (204, 0, 0), (0, 255, 204),
            (255, 0, 255), (0, 204, 0), (0, 0, 204), (255, 255, 0),
            (255, 136, 0), (136, 68, 0), (255, 136, 136), (68, 68, 68),
            (136, 136, 136), (136, 255, 136), (136, 136, 255), (204, 204, 204)
        ]
    },
}

# Deprecated: Legacy single palette for backward compatibility
# Use get_palette_rgb('colodore') instead
C64_PALETTE = PALETTES["10_COLODORE"]["rgb"]


def resolve_palette_name(name: str) -> str | None:
    """
    Resolve palette ID (case-insensitive).

    Args:
        name: Palette ID (e.g., "01_PEPTO_V3", "10_COLODORE")

    Returns:
        Canonical palette ID or None if not found

    Examples:
        >>> resolve_palette_name("10_COLODORE")
        '10_COLODORE'
        >>> resolve_palette_name("01_pepto_v3")
        '01_PEPTO_V3'
        >>> resolve_palette_name("invalid")
        None
    """
    name_lower = name.lower()
    for palette_id in PALETTES:
        if palette_id.lower() == name_lower:
            return palette_id
    return None


def get_palette_rgb(palette_id: str) -> list[tuple[int, int, int]]:
    """
    Get RGB values for a palette by ID.

    Args:
        palette_id: Canonical palette ID

    Returns:
        List of 16 RGB tuples

    Raises:
        ValueError: If palette not found or RGB data unavailable
    """
    if palette_id not in PALETTES:
        raise ValueError(f"Unknown palette ID: {palette_id}")

    rgb = PALETTES[palette_id]["rgb"]
    if rgb is None:
        raise ValueError(f"Palette '{palette_id}' not yet available (coming soon)")

    if len(rgb) != 16:
        raise ValueError(f"Invalid palette: expected 16 colors, got {len(rgb)}")

    return rgb


def list_palettes() -> None:
    """Print formatted table of available C64 color palettes."""
    print("Available C64 Color Palettes:\n")

    # Group by category
    categories = {}
    for palette_id, data in PALETTES.items():
        category = data["category"]
        if category not in categories:
            categories[category] = []
        categories[category].append((palette_id, data))

    # Print each category
    for category in sorted(categories.keys()):
        print(f"Category: {category}")
        for palette_id, data in sorted(categories[category]):
            name = data["name"]
            status = "" if data["rgb"] is not None else " (coming soon)"
            print(f"  {palette_id:20} {name}{status}")
        print()


def create_png_metadata(
    palette_id: str,
    palette_name: str,
    source_file: str
) -> PngImagePlugin.PngInfo:
    """
    Create PNG metadata with palette and conversion info.

    Args:
        palette_id: Palette ID (e.g., "10_COLODORE")
        palette_name: Human-readable palette name (e.g., "Colodore")
        source_file: Original source filename (e.g., "pic01.kla")

    Returns:
        PngInfo object with metadata fields populated
    """
    from datetime import datetime

    metadata = PngImagePlugin.PngInfo()
    metadata.add_text("Software", "kla2png")
    metadata.add_text("C64Palette", palette_id)
    metadata.add_text("C64PaletteName", palette_name)
    metadata.add_text("SourceFile", source_file)
    metadata.add_text("ConversionDate", datetime.now().isoformat())

    return metadata


def parse_koala(data: bytes) -> tuple[bytes, bytes, bytes, int]:
    """Return (bitmap, screen, colorram, background_color)."""
    if len(data) == 10003:
        load_addr = int.from_bytes(data[:2], "little")
        # Koala files typically load at $6000, but don't hard fail if not.
        data = data[2:]
    elif len(data) == 10000:
        load_addr = None
    else:
        raise ValueError(f"Unexpected file size: {len(data)} bytes")

    bitmap = data[0:8000]
    screen = data[8000:9000]
    colorram = data[9000:10000]
    background = data[10000]

    if load_addr is not None and load_addr != 0x6000:
        # Still proceed; some tools may store different load addresses.
        pass

    return bitmap, screen, colorram, background


def decode_multicolor(
    bitmap: bytes,
    screen: bytes,
    colorram: bytes,
    background: int,
    palette: list[tuple[int, int, int]]
) -> Image.Image:
    """
    Decode Koala multicolor bitmap into a 320x200 RGB image.

    Args:
        bitmap: 8000 bytes of bitmap data
        screen: 1000 bytes of screen RAM
        colorram: 1000 bytes of color RAM
        background: Background color index (0-15)
        palette: List of 16 RGB tuples for color mapping

    Returns:
        PIL Image object (320x200 RGB)
    """
    width, height = 320, 200
    img = Image.new("RGB", (width, height))
    pixels = img.load()

    for cell_y in range(25):
        for cell_x in range(40):
            cell_index = cell_y * 40 + cell_x
            screen_byte = screen[cell_index]
            color_byte = colorram[cell_index] & 0x0F
            color01 = (screen_byte >> 4) & 0x0F  # Upper nibble for bit pattern 01
            color10 = screen_byte & 0x0F          # Lower nibble for bit pattern 10
            color11 = color_byte

            for row in range(8):
                # Bitmap is arranged by character cell (8 bytes per cell).
                byte = bitmap[cell_index * 8 + row]
                for pix in range(4):
                    bits = (byte >> (6 - pix * 2)) & 0x03
                    if bits == 0:
                        color = background
                    elif bits == 1:
                        color = color01
                    elif bits == 2:
                        color = color10
                    else:
                        color = color11

                    rgb = palette[color]
                    x = cell_x * 8 + pix * 2
                    y = cell_y * 8 + row
                    pixels[x, y] = rgb
                    pixels[x + 1, y] = rgb  # multicolor pixels are double-width

    return img


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Convert C64 Koala .kla/.koa images to PNG with palette support."
    )
    parser.add_argument("input", nargs="?", type=pathlib.Path, help="Path to .kla/.koa file")
    parser.add_argument("output", nargs="?", type=pathlib.Path, help="Output PNG path")
    parser.add_argument(
        "--palette", "-p",
        type=str,
        default="10_COLODORE",
        help="C64 color palette ID (default: 10_COLODORE). Use --list-palettes to see options"
    )
    parser.add_argument(
        "--list-palettes",
        action="store_true",
        help="List all available C64 color palettes and exit"
    )
    args = parser.parse_args()

    # Handle --list-palettes
    if args.list_palettes:
        list_palettes()
        return 0

    # Require input file if not listing palettes
    if args.input is None:
        parser.error("the following arguments are required: input")

    # Resolve palette name
    palette_id = resolve_palette_name(args.palette)
    if palette_id is None:
        print(f"Error: Unknown palette '{args.palette}'", file=sys.stderr)
        print("Use --list-palettes to see available options", file=sys.stderr)
        return 1

    try:
        palette_rgb = get_palette_rgb(palette_id)
    except ValueError as e:
        print(f"Error: {e}", file=sys.stderr)
        return 1

    # Determine output path
    if args.output is None:
        args.output = args.input.with_suffix(".png")

    # Convert file
    data = args.input.read_bytes()
    bitmap, screen, colorram, background = parse_koala(data)
    img = decode_multicolor(bitmap, screen, colorram, background, palette_rgb)

    # Create PNG metadata with palette and source info
    palette_name = PALETTES[palette_id]["name"]
    metadata = create_png_metadata(
        palette_id=palette_id,
        palette_name=palette_name,
        source_file=args.input.name
    )

    # Save with metadata
    img.save(args.output, format="PNG", pnginfo=metadata)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
