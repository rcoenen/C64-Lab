#!/bin/bash

# Run script for Stable Raster Bar Demo
# Starts VICE with remote monitor, loads and runs the demo, takes screenshot

cd "$(dirname "$0")"

# Build first if needed
if [ ! -f rasterbar.prg ] || [ rasterbar.asm -nt rasterbar.prg ]; then
    echo "=== Building first... ==="
    ./build.sh
    if [ $? -ne 0 ]; then
        exit 1
    fi
fi

echo "=== Starting VICE ==="
x64sc -remotemonitor 2>/dev/null &
VICE_PID=$!

sleep 6

# Get start address from symbol file
start_addr=$(grep "\.label start=" rasterbar.sym | sed -E 's/.*=\$([0-9A-Fa-f]+).*/\1/')
if [ -z "$start_addr" ]; then
    echo "ERROR: Could not find start address in rasterbar.sym"
    kill $VICE_PID 2>/dev/null
    wait $VICE_PID 2>/dev/null
    exit 1
fi

echo "Start address: \$${start_addr}"
echo "=== Loading and running... ==="

{
    sleep 0.5
    echo "load \"rasterbar.prg\" 0"
    sleep 2
    echo "g ${start_addr}"
    sleep 5
    echo "screenshot \"rasterbar_screenshot.png\" 2"
    sleep 1
    echo "quit"
} | nc localhost 6510 2>/dev/null

kill $VICE_PID 2>/dev/null
wait $VICE_PID 2>/dev/null

if [ -f "rasterbar_screenshot.png" ]; then
    echo ""
    echo "=== Success! ==="
    echo "Screenshot: rasterbar_screenshot.png"
    ls -lh rasterbar_screenshot.png
else
    echo ""
    echo "=== Failed to capture screenshot ==="
fi
