#!/bin/bash

# Build script for Stable Raster Bar Demo
# Requires: KickAssembler, Java

KICKASS="/opt/homebrew/opt/openjdk/bin/java -jar $HOME/c64/kickassembler/KickAss.jar"

echo "=== Building rasterbar.asm ==="
$KICKASS rasterbar.asm -symbolfile -showmem

if [ $? -eq 0 ]; then
    echo ""
    echo "=== Build successful! ==="
    echo "Output: rasterbar.prg"
    echo "Symbols: rasterbar.sym"
    echo ""
    echo "Run with: x64sc rasterbar.prg"
else
    echo ""
    echo "=== Build FAILED ==="
    exit 1
fi
