# kla2png

**Convert C64 Koala Painter images to PNG with multiple palette support**

A Python tool to convert Koala Paint (.kla/.koa) images to PNG format. Supports 8 different C64 color palettes from various sources including Pepto, Colodore, emulators (VICE, CCS64, Frodo, PC64), and artist-tuned palettes.

## Requirements

- Python 3.6+
- Pillow library

```bash
pip install pillow
```

## Usage

```bash
# Basic conversion (uses Pepto v3 palette by default)
python kla2png.py input.kla

# Specify output filename
python kla2png.py input.kla output.png

# Use a specific palette
python kla2png.py input.kla --palette 01_PEPTO_V3

# List available palettes
python kla2png.py --list-palettes
```

## Available Palettes

| ID | Name | Description |
|----|------|-------------|
| 01_PEPTO_V3 | Pepto v3 (PAL) | Modern pixel art standard, VIC-II voltage modeling |
| 02_PEPTO_V2 | Pepto v2 (PAL Old) | Early Pepto revision |
| 03_COLODORE | Colodore | Measurement-based, high accuracy |
| 04_CCS64 | CCS64 | Popular emulator palette |
| 05_VICE | VICE | Default VICE emulator palette |
| 06_FRODO | Frodo | Frodo emulator palette |
| 07_PC64 | PC64 | PC64 emulator palette |
| 08_GODOT | Godot | Artist-tuned GoDot palette |

## Koala Format

Koala Paint files are 10003 bytes:
- 2 bytes: Load address ($6000)
- 8000 bytes: Bitmap data
- 1000 bytes: Screen RAM (color info)
- 1000 bytes: Color RAM (color info)
- 1 byte: Background color

## Example

```bash
python kla2png.py assets/koala/pic01.kla preview.png --palette 03_COLODORE
```

## License

MIT
