# C64 Demos

A collection of Commodore 64 demo productions showcasing classic effects and modern cross-development workflows.

## Overview

These demos demonstrate real C64 programming techniques compiled on modern macOS systems. Each project includes complete source code, build scripts, and documentation to help you understand how classic demo effects work.

## Demos

### [koala-slideshow](koala-slideshow/)
A complete demo disk featuring:
- Smooth color fade effects using perceptually correct fading
- Koala Paint multicolor bitmap display
- [Sparkle 3](https://github.com/spartaomg/SparkleCPP) trackloader integration
- Based on [Colfade Doc v2](https://csdb.dk/release/?id=132276) by Veto

**Techniques:** Color cycling, IRQ timing, disk I/O, trackloading

### [rasterbar](rasterbar/)
Classic raster bar effect demonstrating:
- Pixel-perfect stable raster interrupts
- "Double IRQ + Double Compare" technique
- Cycle-exact timing for stable effects

**Techniques:** IRQ handling, VIC-II timing, raster synchronization

## Building & Running

Each demo includes its own `build.sh` script and README with specific instructions. Generally:

1. Install required assembler (see individual demo READMEs)
2. Navigate to the demo directory
3. Run `./build.sh`
4. Load the resulting `.prg` or `.d64` file in VICE emulator

## Requirements

- **macOS** (tested on macOS 14+)
- **[VICE](https://vice-emu.sourceforge.io/)** - C64 emulator
- **KickAssembler** or other 6502 assembler (see individual demos)

## Learning Resources

These demos serve as practical examples for learning:
- 6502 assembly programming
- VIC-II graphics chip programming
- IRQ (interrupt) handling and timing
- C64 demo scene techniques

Each demo includes inline comments and documentation explaining the techniques used.

## Contributing

Feel free to:
- Submit improvements or optimizations
- Add new demo effects
- Improve documentation
- Report issues or bugs

## License

MIT - See individual demo directories for any third-party code licenses.
