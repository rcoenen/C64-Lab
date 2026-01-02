//============================================================================
// Koala Slideshow with Sparkle 2 Trackloader
//============================================================================
// Displays Koala format images from D64 with smooth color fade effects.
// Uses Sparkle 2 trackloader for fast compressed loading.
//
// Flow: fade_in -> display -> wait -> fade_out -> load next -> repeat
//
// CRITICAL: Code must compile to <= 87 compressed blocks or Sparkle hangs!
// Monitor with: ./build_d64.sh 2>&1 | grep "Compressed"
//============================================================================

//----------------------------------------------------------------------------
// Configuration
//----------------------------------------------------------------------------
.const NUM_IMAGES = 6           // Number of images on disk (bundles 1-6)
.const AUTO_DELAY = 250         // Auto-advance delay (~5 seconds at 50Hz)
.const fade_speed = 1           // Frames per fade step (fade_in only)
.const steps = 16               // Total fade steps (8 in, 8 out)

//----------------------------------------------------------------------------
// Memory addresses - VIC display
//----------------------------------------------------------------------------
.const bitmap = $2000           // VIC bitmap (8000 bytes)
.const screenram = $0400        // VIC screen RAM (1000 bytes)
.const colorram = $d800         // VIC color RAM (1000 bytes)

//----------------------------------------------------------------------------
// Memory addresses - Source buffers (for fade effect)
// We copy image data here so we can fade from source to display
//----------------------------------------------------------------------------
.const src_screenram = $4000    // Copy of screen RAM for fade lookup
.const src_colorram = $4400     // Copy of color RAM for fade lookup
.const image_buffer = $8000     // Where Sparkle loads images (10001 bytes)

//----------------------------------------------------------------------------
// Sparkle loader API - resident at $0160-$03FF
//----------------------------------------------------------------------------
#import "Sparkle.inc"

//============================================================================
// Entry point - Sparkle jumps here after loading bundle 0
//============================================================================
* = $0800 "main"

    jmp start

//============================================================================
// Main initialization
//============================================================================
start:
    sei                         // Disable interrupts (stay disabled)

    //------------------------------------------------------------------------
    // Clear screen and color RAM to black
    //------------------------------------------------------------------------
    lda #$00
    tax
!:
.for (var i=0; i<4; i++) {
    sta screenram+(i*$100),x    // Clear 4 pages of screen RAM
    sta colorram+(i*$100),x     // Clear 4 pages of color RAM
}
    inx
    bne !-

    //------------------------------------------------------------------------
    // Configure VIC-II for multicolor bitmap mode
    //------------------------------------------------------------------------
    lda #$3b                    // $3B = bitmap mode on, screen on
    sta $d011                   // VIC control register 1
    lda #$d8                    // $D8 = multicolor mode on
    sta $d016                   // VIC control register 2
    lda #$18                    // Screen at $0400, bitmap at $2000
    sta $d018                   // VIC memory control
    lda #%00000011              // VIC Bank 0 ($0000-$3FFF)
    sta $dd00                   // CIA2 port A

    //------------------------------------------------------------------------
    // Initialize variables
    //------------------------------------------------------------------------
    lda #0
    sta current_image           // Start with first image
    sta frame_counter
    sta frame_counter+1

//============================================================================
// Main loop - show one image
//============================================================================
show_image:
    //------------------------------------------------------------------------
    // Load image from disk
    // Bundle 0 = this code, images are bundles 1, 2, 3...
    //------------------------------------------------------------------------
    lda current_image
    clc
    adc #1                      // Bundle index = current_image + 1
    jsr Sparkle_LoadA           // Load bundle A to its target address ($8000)

    //------------------------------------------------------------------------
    // Copy loaded image data from $8000 to display buffers
    //------------------------------------------------------------------------
    jsr copy_image_to_buffers

    //------------------------------------------------------------------------
    // Turn screen on (may have been off from previous fade_out)
    //------------------------------------------------------------------------
    lda #$3b
    sta $d011

    //------------------------------------------------------------------------
    // Fade in the image
    //------------------------------------------------------------------------
    jsr fade_in

    //------------------------------------------------------------------------
    // Wait for user input or timeout
    //------------------------------------------------------------------------
    jsr wait_with_timeout

    //------------------------------------------------------------------------
    // Fade out before switching to next image
    //------------------------------------------------------------------------
    jsr fade_out

    //------------------------------------------------------------------------
    // Turn screen off during loading (prevents seeing garbage)
    //------------------------------------------------------------------------
    lda $d011
    and #$ef                    // Clear bit 4 = screen off
    sta $d011

    //------------------------------------------------------------------------
    // Advance to next image (wrap around)
    //------------------------------------------------------------------------
    inc current_image
    lda current_image
    cmp #NUM_IMAGES
    bcc show_image              // Not at end yet
    lda #0
    sta current_image           // Wrap to first image
    jmp show_image

//============================================================================
// Copy image from load buffer ($8000) to display/source buffers
//============================================================================
// Koala format at $8000:
//   +0000: 8000 bytes bitmap  -> copy to $2000 (VIC bitmap)
//   +8000: 1000 bytes screen  -> copy to $4000 (source buffer)
//   +9000: 1000 bytes color   -> copy to $4400 (source buffer)
//   +10000: 1 byte background -> store at src_colorram+1000 and $D021
//
// Uses self-modifying code (SMC) for speed
//============================================================================
copy_image_to_buffers:
    //------------------------------------------------------------------------
    // Copy bitmap: $8000 -> $2000 (8000 bytes = 31 pages + 64 bytes)
    //------------------------------------------------------------------------
    ldx #$1f                    // 31 full pages
    ldy #0
!outer:
!inner:
    lda image_buffer,y          // SMC: high byte modified below
    sta bitmap,y                // SMC: high byte modified below
    iny
    bne !inner-
    inc !outer- + 2             // SMC: increment source high byte
    inc !outer- + 5             // SMC: increment dest high byte
    dex
    bne !outer-
    // Last 64 bytes ($40)
!last:
    lda image_buffer + $1f00,y
    sta bitmap + $1f00,y
    iny
    cpy #$40
    bne !last-

    // Reset SMC to original addresses
    lda #>image_buffer
    sta !outer- + 2
    lda #>bitmap
    sta !outer- + 5

    //------------------------------------------------------------------------
    // Copy screen RAM: $8000+8000 -> $4000 (1000 bytes = 3 pages + 232)
    //------------------------------------------------------------------------
    ldx #3
    ldy #0
!outer2:
!inner2:
    lda image_buffer + 8000,y   // SMC
    sta src_screenram,y         // SMC
    iny
    bne !inner2-
    inc !outer2- + 2
    inc !outer2- + 5
    dex
    bne !outer2-
    // Last 232 bytes ($e8)
!last2:
    lda image_buffer + 8000 + $300,y
    sta src_screenram + $300,y
    iny
    cpy #$e8
    bne !last2-

    // Reset SMC
    lda #>(image_buffer + 8000)
    sta !outer2- + 2
    lda #>src_screenram
    sta !outer2- + 5

    //------------------------------------------------------------------------
    // Copy color RAM: $8000+9000 -> $4400 (1000 bytes)
    //------------------------------------------------------------------------
    ldx #3
    ldy #0
!outer3:
!inner3:
    lda image_buffer + 9000,y   // SMC
    sta src_colorram,y          // SMC
    iny
    bne !inner3-
    inc !outer3- + 2
    inc !outer3- + 5
    dex
    bne !outer3-
    // Last 232 bytes
!last3:
    lda image_buffer + 9000 + $300,y
    sta src_colorram + $300,y
    iny
    cpy #$e8
    bne !last3-

    // Reset SMC
    lda #>(image_buffer + 9000)
    sta !outer3- + 2
    lda #>src_colorram
    sta !outer3- + 5

    //------------------------------------------------------------------------
    // Background color (byte 10000 in Koala file)
    //------------------------------------------------------------------------
    lda image_buffer + 10000
    sta src_colorram + 1000     // Store for fade effect reference
    sta $d021                   // Set VIC background color

    rts

//============================================================================
// Fade in effect - 16 steps from black to full color
//============================================================================
// Uses the t_fadepercol table to determine intermediate colors.
// Records SMC pointer values in fade_row_tbl for fade_out to replay.
//
// Algorithm:
// 1. For each fade step (15 down to 7):
//    - Record current row pointer (first 8 steps)
//    - Generate t_color_fade lookup table for this step
//    - Wait fade_speed frames
//    - Apply lookup to screen/color RAM via fade_pass
//    - Update border/background colors
//============================================================================
fade_in:
    lda #0
    sta fade_row_idx            // Reset recording index

    // Initialize SMC pointers to start of t_fadepercol
    lda #<t_fadepercol
    sta smc_fadepercol1 + 1
    sta smc_fadepercol2 + 1

    lda #steps-1                // Start at step 15
    sta fade_step

fade_loop:
    ldy fade_step

    //------------------------------------------------------------------------
    // Record fade row pointers for fade_out to replay in reverse
    // Only record first 8 steps (steps 15-8 correspond to rows 0-7)
    //------------------------------------------------------------------------
    lda fade_row_idx
    cmp #(steps/2)              // Only record first 8 values
    bcs !skip_store+
    ldx fade_row_idx
    lda smc_fadepercol1 + 1     // Get current row pointer
    sta fade_row_tbl,x          // Store for later replay
    inc fade_row_idx
!skip_store:

    //------------------------------------------------------------------------
    // Generate the 256-byte t_color_fade lookup table for this fade step
    //------------------------------------------------------------------------
    lda #<t_color_fade
    sta smc_totpercol + 1
    jsr generate_phase_col_tables

    //------------------------------------------------------------------------
    // Wait fade_speed frames for smooth animation
    //------------------------------------------------------------------------
    ldx #fade_speed
!:  jsr wait_frame
    dex
    bne !-

    //------------------------------------------------------------------------
    // Apply the fade lookup to all screen and color RAM
    //------------------------------------------------------------------------
    jsr fade_pass

    //------------------------------------------------------------------------
    // Update border and background colors using fade lookup
    // src_colorram+1000 contains the original background color byte
    // Low nibble = background, high nibble = border (as stored in Koala)
    //------------------------------------------------------------------------
    ldx src_colorram+1000       // Get original bg color byte
    lda t_color_fade,x          // Look up faded version
    sta $d021                   // Set background
    lda src_colorram+1000
    lsr                         // Shift high nibble to low
    lsr
    lsr
    lsr
    tax
    lda t_color_fade,x          // Look up faded border color
    sta $d020                   // Set border

    //------------------------------------------------------------------------
    // Continue until we reach the middle step (step 7)
    //------------------------------------------------------------------------
    dec fade_step
    lda fade_step
    cmp #(steps/2)-1            // Stop at step 7
    bne fade_loop

    //------------------------------------------------------------------------
    // Set final colors (no more fading)
    //------------------------------------------------------------------------
    lda src_colorram+1000
    sta $d021
    lsr
    lsr
    lsr
    lsr
    sta $d020

    rts

//============================================================================
// Wait for timeout or SPACE key press
//============================================================================
wait_with_timeout:
    lda #0
    sta frame_counter
    sta frame_counter+1

!loop:
    jsr wait_frame

    //------------------------------------------------------------------------
    // Check SPACE key (row 7, column 4 in keyboard matrix)
    //------------------------------------------------------------------------
    lda #$7f                    // Select row 7
    sta $dc00
    lda $dc01
    and #$10                    // Check column 4 (SPACE)
    beq !done+                  // If pressed, exit immediately

    //------------------------------------------------------------------------
    // Increment frame counter (16-bit)
    //------------------------------------------------------------------------
    inc frame_counter
    bne !+
    inc frame_counter+1
!:
    //------------------------------------------------------------------------
    // Check if AUTO_DELAY reached
    //------------------------------------------------------------------------
    lda frame_counter+1
    cmp #>AUTO_DELAY
    bcc !loop-
    lda frame_counter
    cmp #<AUTO_DELAY
    bcc !loop-

!done:
    //------------------------------------------------------------------------
    // Debounce - wait for SPACE release
    //------------------------------------------------------------------------
!:  lda $dc01
    and #$10
    beq !-                      // Wait while still pressed

    rts

//============================================================================
// Wait for vertical blank (one frame)
//============================================================================
// Waits for raster to leave visible area, then waits for it to return.
// This ensures we sync to the frame rate.
//============================================================================
wait_frame:
!:  bit $d011                   // Check bit 7 of raster counter
    bpl !-                      // Wait while in visible area (bit 7 = 0)
!:  bit $d011
    bmi !-                      // Wait while in border (bit 7 = 1)
    rts

//============================================================================
// Apply fade lookup to screen and color RAM
//============================================================================
// For each byte in src_screenram and src_colorram:
//   - Look up the faded color in t_color_fade
//   - Store to corresponding display location
//
// Screen RAM: 1000 bytes = 4 pages - 24 bytes
// Color RAM: 1000 bytes = 4 pages - 24 bytes
//============================================================================
fade_pass:
    // Screen RAM pages 0-3
    ldx #0
!page0:
    lda src_screenram,x
    tay
    lda t_color_fade,y
    sta screenram,x
    inx
    bne !page0-

    ldx #0
!page1:
    lda src_screenram+$100,x
    tay
    lda t_color_fade,y
    sta screenram+$100,x
    inx
    bne !page1-

    ldx #0
!page2:
    lda src_screenram+$200,x
    tay
    lda t_color_fade,y
    sta screenram+$200,x
    inx
    bne !page2-

    ldx #0
!page3:
    lda src_screenram+$300,x
    tay
    lda t_color_fade,y
    sta screenram+$300,x
    inx
    cpx #$e8                    // Only 232 bytes in last page
    bne !page3-

    // Color RAM pages 0-3
    ldx #0
!col0:
    lda src_colorram,x
    tay
    lda t_color_fade,y
    sta colorram,x
    inx
    bne !col0-

    ldx #0
!col1:
    lda src_colorram+$100,x
    tay
    lda t_color_fade,y
    sta colorram+$100,x
    inx
    bne !col1-

    ldx #0
!col2:
    lda src_colorram+$200,x
    tay
    lda t_color_fade,y
    sta colorram+$200,x
    inx
    bne !col2-

    ldx #0
!col3:
    lda src_colorram+$300,x
    tay
    lda t_color_fade,y
    sta colorram+$300,x
    inx
    cpx #$e8
    bne !col3-

    rts

//============================================================================
// Generate the t_color_fade lookup table using SMC
//============================================================================
// This generates all 256 entries of t_color_fade for the current fade step.
// Each entry maps a screen/color byte to its faded equivalent.
//
// Screen bytes have format: high_nibble * 16 + low_nibble
// We need to fade both nibbles independently.
//
// Algorithm:
// - For each of 16 high nibble values (0-15):
//   - For each of 16 low nibble values (0-15):
//     - Look up faded high nibble in t_fadepercol
//     - Look up faded low nibble in t_fadepercol
//     - Combine: (faded_high << 4) | faded_low
//     - Store to t_color_fade
//
// The SMC pointers (smc_fadepercol1/2) point to rows in t_fadepercol
// that determine the current fade level.
//============================================================================
generate_phase_col_tables:
!loop:
    ldx #0
!:
    ldy t_col2index,x           // Y = X * 16 (maps to row offset)
smc_fadepercol1:
    lda t_fadepercol            // SMC: load faded color for X
    asl                         // Shift to high nibble position
    asl
    asl
    asl
smc_fadepercol2:
    ora t_fadepercol,y          // SMC: OR in faded color for Y
smc_totpercol:
    sta t_color_fade            // SMC: store to current output byte
    inc smc_totpercol + 1       // Advance output pointer
    inx
    cpx #$10                    // 16 values per row
    bcc !-

    // Advance to next row (add 15 + carry = 16)
    lda smc_fadepercol1 + 1
    adc #$0f
    sta smc_fadepercol1 + 1
    bcc !loop-

    // Advance row pointers
    inc smc_fadepercol1 + 1
    inc smc_fadepercol2 + 1
    rts

//============================================================================
// Fade out effect - reverse of fade_in
//============================================================================
// Replays the recorded SMC pointer values from fade_row_tbl in reverse.
// This creates a mirror of the fade-in, going from full color to black.
//
// NOTE: Optimized for size to stay under 87 compressed blocks:
// - Single frame delay (faster than fade_in)
// - No border/background updates (we're going to black anyway)
// - No raster sync (not visually necessary)
//============================================================================
fade_out:
    lda #(steps/2)-1            // Start at index 7 (last recorded)
    sta fade_row_idx

fade_out_loop:
    //------------------------------------------------------------------------
    // Replay the recorded SMC pointer for this step
    //------------------------------------------------------------------------
    ldx fade_row_idx
    lda fade_row_tbl,x
    sta smc_fadepercol1 + 1
    sta smc_fadepercol2 + 1

    //------------------------------------------------------------------------
    // Generate t_color_fade lookup table for this step
    //------------------------------------------------------------------------
    lda #<t_color_fade
    sta smc_totpercol + 1
    jsr generate_phase_col_tables

    //------------------------------------------------------------------------
    // Wait one frame (faster than fade_in to save code size)
    //------------------------------------------------------------------------
    jsr wait_frame

    //------------------------------------------------------------------------
    // Apply the fade lookup to screen and color RAM
    //------------------------------------------------------------------------
    jsr fade_pass

    //------------------------------------------------------------------------
    // Continue until we've done all 8 steps (index 7 down to 0)
    //------------------------------------------------------------------------
    dec fade_row_idx
    bpl fade_out_loop

    //------------------------------------------------------------------------
    // Set border and background to black
    //------------------------------------------------------------------------
    lda #$00
    sta $d021
    sta $d020
    rts

//============================================================================
// Variables
//============================================================================
current_image:  .byte 0         // Current image index (0 to NUM_IMAGES-1)
fade_step:      .byte 0         // Current fade step (15 down to 7)
frame_counter:  .word 0         // Frame counter for timeout
fade_row_idx:   .byte 0         // Index for recording/replaying fade rows

//============================================================================
// Tables
//============================================================================

//----------------------------------------------------------------------------
// t_col2index: Maps color index (0-15) to row offset in t_fadepercol
// Each row is 16 bytes, so offset = index * 16
//----------------------------------------------------------------------------
t_col2index:
    .fill $10, i*$10            // 0, 16, 32, 48, ... 240

//----------------------------------------------------------------------------
// fade_row_tbl: Records SMC pointer values during fade_in
// Used by fade_out to replay in reverse
// Size: steps/2 = 8 bytes
//----------------------------------------------------------------------------
fade_row_tbl:
    .fill (steps/2), 0

//----------------------------------------------------------------------------
// t_fadepercol: Perceptual color fade table (256 bytes, MUST be page-aligned)
//
// 16 rows of 16 bytes. Each row represents a fade level.
// Row 0 = all black, Row 7 = target colors
//
// Format: For color C at fade level R, faded color = t_fadepercol[R*16 + C]
//
// Based on C64 luminance ordering for smooth transitions:
// Black(0) < Blue(6) < Red(2) < Purple(4) < Brown(9) < DkGrey(11) <
// Grey(12) < DkGreen(5) < Orange(8) < LtGreen(13) < LtGrey(15) <
// Cyan(3) < LtRed(10) < Yellow(7) < LtBlue(14) < Green(5) < White(1)
//----------------------------------------------------------------------------
.align $100
t_fadepercol:
    .byte $0,$0,$0,$0, $0,$0,$0,$0,  $0,$0,$0,$0, $0,$0,$0,$0  // Row 0: all black
    .byte $0,$9,$2,$4, $c,$3,$d,$1,  $d,$3,$c,$4, $2,$9,$0,$0  // Row 1
    .byte $0,$0,$0,$0, $0,$0,$9,$2,  $9,$0,$0,$0, $0,$0,$0,$0  // Row 2
    .byte $0,$0,$0,$9, $2,$4,$c,$3,  $c,$4,$2,$9, $0,$0,$0,$0  // Row 3
    .byte $0,$0,$0,$0, $0,$6,$b,$4,  $b,$6,$0,$0, $0,$0,$0,$0  // Row 4
    .byte $0,$0,$0,$0, $9,$b,$4,$5,  $4,$b,$9,$0, $0,$0,$0,$0  // Row 5
    .byte $0,$0,$0,$0, $0,$0,$0,$6,  $0,$0,$0,$0, $0,$0,$0,$0  // Row 6
    .byte $0,$0,$9,$2, $8,$a,$f,$7,  $f,$a,$8,$2, $9,$0,$0,$0  // Row 7: full brightness
    .byte $0,$0,$0,$0, $0,$9,$2,$8,  $2,$9,$0,$0, $0,$0,$0,$0  // Row 8 (mirror)
    .byte $0,$0,$0,$0, $0,$0,$9,$9,  $9,$0,$0,$0, $0,$0,$0,$0  // Row 9
    .byte $0,$0,$0,$0, $9,$2,$8,$a,  $8,$2,$9,$0, $0,$0,$0,$0  // Row 10
    .byte $0,$0,$0,$0, $0,$0,$6,$b,  $6,$0,$0,$0, $0,$0,$0,$0  // Row 11
    .byte $0,$0,$0,$0, $9,$b,$4,$c,  $4,$b,$9,$0, $0,$0,$0,$0  // Row 12
    .byte $0,$0,$6,$b, $4,$e,$3,$d,  $3,$e,$4,$b, $6,$0,$0,$0  // Row 13
    .byte $0,$0,$0,$0, $6,$b,$4,$e,  $4,$b,$6,$0, $0,$0,$0,$0  // Row 14
    .byte $0,$0,$0,$9, $2,$8,$a,$f,  $a,$8,$2,$9, $0,$0,$0,$0  // Row 15

//----------------------------------------------------------------------------
// t_color_fade: Working table for current fade step (256 bytes, page-aligned)
// Filled dynamically by generate_phase_col_tables
// Maps: input_byte -> faded_byte
//----------------------------------------------------------------------------
.align $100
t_color_fade:
    .fill $100, 0
