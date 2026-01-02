# Koala Slideshow - C64 Demo with Sparkle 3

**An open-source reference project for modern C64 demo development (2026)**

This project demonstrates how to build a complete C64 demo disk (D64) on macOS using a contemporary cross-development toolchain. It serves as a learning resource and starting template for anyone wanting to create C64 demos, games, or other productions using today's tools while targeting the classic Commodore 64 hardware.

**Built through "vibe coding"** - developed iteratively with AI assistance (Claude), focusing on modern authoring workflows: cross-platform toolchains, open-source tools, and AI pair programming. The goal is to demonstrate that you can build real C64 productions on modern computers without deep 6502 expertise.

## What This Does

- Displays **Koala format images** with smooth color fade-in/fade-out effects
- **Auto-advances** every ~5 seconds
- Press **SPACE** to skip to next image
- Loops forever through all images
- Uses **[Sparkle 3](https://github.com/spartaomg/SparkleCPP) trackloader** for fast compressed loading from disk

## Project Structure

```
├── koala_slideshow_sparkle.asm   # Main 6502 assembly source
├── koala_slideshow_sparkle.sym   # Symbol file (generated)
├── Sparkle.inc                   # Sparkle loader API
├── slideshow.sls                 # Sparkle disk script
├── slideshow.prg                 # Compiled viewer (generated)
├── build_d64.sh                  # Build script
├── assets/Koala/                 # Koala images (.kla)
│   ├── pic01.kla
│   ├── pic02.kla
│   └── pic03.kla
└── KoalaSlideshow.d64            # Final D64 disk image (generated)
```

## Requirements

### macOS Tools

1. **KickAssembler** - 6502 cross-assembler
   ```bash
   # Install to ~/c64/kickassembler/
   # Download from: http://theweb.dk/KickAssembler/
   ```

2. **Sparkle 3** - Native C++ trackloader/disk builder
   ```bash
   # Clone and build from source:
   git clone https://github.com/spartaomg/SparkleCPP
   cd SparkleCPP
   make
   sudo cp sparkle /usr/local/bin/
   ```
   Or download a pre-built binary from the releases page.

3. **VICE** - C64 emulator for testing
   ```bash
   brew install vice
   # Or download from: https://vice-emu.sourceforge.io/
   ```

## Building

```bash
./build_d64.sh
```

This will:
1. Assemble `koala_slideshow_sparkle.asm` → `slideshow.prg`
2. Build D64 with Sparkle compression → `KoalaSlideshow.d64`

## Testing

```bash
x64sc KoalaSlideshow.d64
```

The disk auto-boots and runs the slideshow.

---

## Memory Map

```
$0160-$02FF  Sparkle 3 loader (resident code)
$0300-$03FF  Sparkle 3 loader buffer (don't overwrite between sequential loads!)
$0400-$07E7  Screen RAM (VIC display, 1000 bytes)
$0800-$0CFF  Main program code (1280 bytes)
  $0800       Entry point (jmp start)
  $0803       start - initialization
  $0841       show_image - main loop
  $0872       copy_image_to_buffers - SMC-based memory copy
  $08FD       fade_in - 16-step color fade in
  $0967       wait_with_timeout - input/timer handler
  $099C       wait_frame - vertical blank sync
  $09A7       fade_pass - apply color lookup to screen/color RAM
  $0A24       generate_phase_col_tables - SMC table generator
  $0A4F       fade_out - color fade out (reverse of fade_in)
  $0AA3-$0AA7 Variables (5 bytes)
  $0AA8-$0AB7 t_col2index lookup (16 bytes)
  $0AB8-$0ABF fade_row_tbl (8 bytes) - recorded fade steps
  $0B00-$0BFF t_fadepercol (256 bytes, page-aligned)
  $0C00-$0CFF t_color_fade (256 bytes, page-aligned)
$2000-$3F3F  VIC Bitmap (8000 bytes)
$4000-$43E7  Source screen RAM buffer (for fade effect)
$4400-$47E7  Source color RAM buffer (for fade effect)
$8000-$A711  Image load buffer (where Sparkle loads images)
$D800-$DBE7  Color RAM (VIC, 1000 bytes)
```

---

## How the Fade Effect Works

### Overview

The fade effect smoothly transitions all 16 C64 colors through perceptually correct intermediate colors. Both screen RAM and color RAM are faded simultaneously.

**Research Source:** The color fade algorithm is based on [Colfade Doc v2](https://csdb.dk/release/?id=132276) by Veto (2014) - an essential reference document for C64 color fading techniques that maps perceptually correct fade paths for each of the 16 C64 colors.

### Color Fade Algorithm

The fade uses a perceptual color transition table (`t_fadepercol`) that defines how each C64 color transitions through intermediate colors when fading to/from black.

Example fade sequences:
- White ($01): black → dark grey → grey → light grey → white
- Red ($02): black → brown → red
- Cyan ($03): black → dark grey → grey → cyan

The `t_fadepercol` table is 256 bytes organized as 16 rows of 16 bytes:
- Row 0: All colors at fade step 0 (all black)
- Row 7: All colors at full brightness (target colors)
- Rows 8-15: Mirror of rows 6-0 (for symmetrical effect)

### Self-Modifying Code (SMC)

The fade uses SMC to efficiently generate a 256-byte lookup table (`t_color_fade`) for each fade step. This table maps any screen/color RAM byte value to its faded equivalent.

**Why SMC?** Screen RAM bytes contain TWO colors (high nibble = foreground, low nibble = background). We need all 256 possible combinations mapped, which the SMC generates efficiently.

Key SMC labels:
- `smc_fadepercol1`: Points to row for high nibble lookup
- `smc_fadepercol2`: Points to row for low nibble lookup
- `smc_totpercol`: Points to current byte in t_color_fade being written

### Fade-In Process

1. Initialize `fade_row_idx` to 0
2. For each fade step (15 down to 7):
   - **Record** the current SMC pointer value in `fade_row_tbl` (first 8 steps only)
   - Generate `t_color_fade` lookup table via `generate_phase_col_tables`
   - Wait `fade_speed` frames for timing
   - Apply fade to screen/color RAM using `fade_pass`
   - Update border ($D020) and background ($D021) colors
3. Set final target colors

### Fade-Out Process (Reverse of Fade-In)

1. Initialize `fade_row_idx` to 7 (last recorded step)
2. For each step (7 down to 0):
   - **Replay** the SMC pointer value from `fade_row_tbl`
   - Generate `t_color_fade` lookup table
   - Wait one frame
   - Apply fade using `fade_pass`
3. Set border/background to black ($00)

The fade-out **replays** the recorded SMC pointer values in reverse order, creating a perfect mirror of the fade-in.

---

## Critical Constraints & Lessons Learned

### Code Size Optimization

When working with disk-based loaders, code size matters. Here are optimizations used in this project:

1. **Single-frame wait** in fade_out instead of multi-frame loop
   ```asm
   jsr wait_frame          // 3 bytes
   // Instead of:
   // ldx #fade_speed      // 2 bytes
   // !: jsr wait_frame    // 3 bytes
   // dex                  // 1 byte
   // bne !-               // 2 bytes = 8 bytes total
   ```

2. **No border/background updates** during fade-out (we're fading to black anyway)

3. **No raster sync** in fade-out (not needed for visual quality)

4. **Removed unused `t_easyfade` table** (saved 16 bytes)

The fade-out is faster than fade-in (1 frame vs `fade_speed` frames per step) but this looks good as a quick transition.

### Page Alignment Requirements

The lookup tables **MUST** be page-aligned ($xx00):

```asm
.align $100
t_fadepercol:     // Must be at $0B00
    ...

.align $100
t_color_fade:     // Must be at $0C00
    ...
```

**Why?** The SMC walks through these tables by incrementing just the low byte of the address. If not page-aligned, it would wrap incorrectly.

### Compression Sensitivity

Adding code doesn't always increase compressed size linearly:
- Adding 30 bytes of code might add 0 blocks (better compression)
- Adding 5 bytes might add 1 block (worse compression)

The compressor's efficiency depends on byte patterns and repetition.

---

## Debugging with VICE Remote Monitor

### Starting VICE with Remote Monitor

```bash
# Kill any existing VICE, start with remote monitor
pkill -f x64sc
x64sc -remotemonitor -remotemonitoraddress 127.0.0.1:6510 KoalaSlideshow.d64 &

# Wait for startup, then query
sleep 4
echo "r" | nc 127.0.0.1 6510
```

### Key Addresses to Check

| PC Address | Meaning |
|------------|---------|
| $0160-$02FF | Sparkle 3 loader code area |
| $098C-$09A4 | Normal - in wait_with_timeout loop |
| $09A1 | Normal - image displayed, waiting for SPACE/timeout |
| $099C-$09A0 | Normal - in wait_frame loop |

### Useful Monitor Commands

```bash
# Show registers
echo "r" | nc 127.0.0.1 6510

# Disassemble at address
echo "d 0800" | nc 127.0.0.1 6510

# Show memory
echo "m 2000 2010" | nc 127.0.0.1 6510

# Set breakpoint
echo "break 0841" | nc 127.0.0.1 6510
```

### Common Issues

| Symptom | Cause | Fix |
|---------|-------|-----|
| Garbage on screen | Wrong bundle address/length | Check slideshow.sls file parameters |
| No fade, instant image | t_color_fade not page-aligned | Add .align $100 |
| Fade flickers | No raster sync in fade_pass caller | Add wait for raster $70-$90 |
| Loading hangs | Wrong Sparkle.inc addresses | Ensure addresses match Sparkle 3 |

---

## Adding Images

1. Convert your images to Koala format (.kla) using:
   - [Retropixels](https://www.micheldebree.nl/retropixels/) - web-based converter (recommended)
   - [png2prg](https://github.com/staD020/png2prg): `png2prg -m koala image.png`
   - Multipaint, GIMP with C64 plugins, etc.

2. Place `.kla` files in `assets/Koala/`

3. Edit `slideshow.sls` to add bundles (Sparkle 3 format):
   ```
   File:	"assets/Koala/pic04.kla" 8000 0002 2711
   ```

4. Update `NUM_IMAGES` in `koala_slideshow_sparkle.asm`

5. Rebuild: `./build_d64.sh`

**Warning**: Adding more images increases compressed size. Monitor block count!

---

## Koala Format (10003 bytes with load address)

```
+0000: 2-byte load address ($6000)
+0002: 8000 bytes bitmap data
+8002: 1000 bytes screen RAM
+9002: 1000 bytes color RAM
+10002: 1 byte background color
```

When loading with Sparkle (offset 0002), we skip the load address.

---

## Controls

| Key   | Action              |
|-------|---------------------|
| SPACE | Skip to next image  |
| (none)| Auto-advance ~5 sec |

---

## Technical Notes

- VIC Bank 0 ($0000-$3FFF)
- Multicolor bitmap mode ($D011=$3B, $D016=$D8)
- 50Hz PAL timing for fade (~5 sec = 250 frames)
- Self-modifying code for fast memory copies
- SEI at start (interrupts disabled throughout)

---

## Credits

- **Sparkle 3**: [Sparta/OMG Productions](https://github.com/spartaomg/SparkleCPP) - trackloader and disk builder
- **Color fade algorithm**: [Colfade Doc v2](https://csdb.dk/release/?id=132276) by Veto (2014) - essential C64 color fade research
- **Image conversion**: [Retropixels](https://www.micheldebree.nl/retropixels/) by Michel de Bree ([source](https://github.com/micheldebree/retropixels)) - PNG to Koala converter
- **KickAssembler**: [Mads Nielsen](http://theweb.dk/KickAssembler/) - 6502 cross-assembler

## License

MIT
