# C64-Lab

**Open-source Commodore 64 development tools and demos for modern macOS workflows (2026)**

A collection of reference projects demonstrating how to create C64 software using contemporary cross-development toolchains. Built through "vibe coding" - developed iteratively with AI assistance, focusing on modern authoring workflows: cross-platform toolchains, open-source tools, and AI pair programming.

The goal is to show that you can build real C64 productions on modern computers without deep 6502 expertise.

## Projects

### [kla2png](kla2png/)
Python tool to convert Koala Paint (.kla) images to PNG format. Useful for previewing C64 multicolor bitmap images on modern systems.

### [koala-slideshow](koala-slideshow/)
A complete C64 demo disk featuring smooth color fade effects and the [Sparkle 3](https://github.com/spartaomg/SparkleCPP) trackloader. Displays Koala format images with perceptually correct color fading based on [Colfade Doc v2](https://csdb.dk/release/?id=132276) by Veto.

## Requirements

- **macOS** (tested on macOS 14+)
- **[VICE](https://vice-emu.sourceforge.io/)** - C64 emulator for testing

See individual project READMEs for specific tool requirements.

## Philosophy

These projects prioritize:
- **Accessibility** - Get started without years of 6502 experience
- **Modern tooling** - Cross-compile from macOS, use familiar editors
- **Documentation** - Understand what the code does and why
- **Open source** - Learn from and build upon these examples

## License

MIT
