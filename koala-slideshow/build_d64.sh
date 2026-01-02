#!/bin/bash
# Build Koala Slideshow D64 with Sparkle 3

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Update these paths to match your local setup
KICKASS=~/c64/kickassembler/KickAss.jar
SPARKLE=/usr/local/bin/sparkle

echo "=== Building Koala Slideshow D64 ==="

# Step 1: Assemble the slideshow code
echo "Assembling slideshow..."
java -jar "$KICKASS" "$SCRIPT_DIR/koala_slideshow_sparkle.asm" -o "$SCRIPT_DIR/slideshow.prg"

# Step 2: Build D64 with Sparkle 3
echo "Building D64 with Sparkle 3..."
cd "$SCRIPT_DIR"
"$SPARKLE" slideshow.sls

echo ""
echo "=== Build complete ==="
echo "D64 file: $SCRIPT_DIR/KoalaSlideshow.d64"
echo ""
echo "To test: x64sc $SCRIPT_DIR/KoalaSlideshow.d64"
