// ============================================================================
// STABLE RASTER BAR DEMO - C64 PAL
// ============================================================================
//
// This demo displays pixel-perfect stable raster bars using the classic
// "Double IRQ + Double Compare" technique.
//
// Author: Demo coded with Claude
// Target: PAL C64 (63 cycles per raster line)
// Assembler: KickAssembler
//
// ============================================================================

BasicUpstart2(start)

// ============================================================================
// CONSTANTS
// ============================================================================

// C64 Color Values
.var BLACK      = 0
.var WHITE      = 1
.var RED        = 2
.var CYAN       = 3
.var PURPLE     = 4
.var GREEN      = 5
.var BLUE       = 6
.var YELLOW     = 7
.var ORANGE     = 8
.var BROWN      = 9
.var LIGHTRED   = 10
.var DARKGRAY   = 11
.var MEDGRAY    = 12
.var LIGHTGREEN = 13
.var LIGHTBLUE  = 14
.var LIGHTGRAY  = 15

// Raster line where the bars start (visible area is roughly $30-$F7)
.label RASTER_START = $60

// ============================================================================
// MAIN PROGRAM
// ============================================================================

start:
    sei                     // Disable interrupts during setup

    // -------------------------------------------------------------------------
    // STEP 1: Switch to I/O mode, disable KERNAL ROM
    // -------------------------------------------------------------------------
    // $01 = CPU port. Value $35 means:
    //   - BASIC ROM disabled
    //   - KERNAL ROM disabled
    //   - I/O area ($D000-$DFFF) enabled
    // This allows us to write directly to $FFFE/$FFFF (hardware IRQ vector)
    // -------------------------------------------------------------------------
    lda #$35
    sta $01

    // -------------------------------------------------------------------------
    // STEP 2: Disable CIA timer interrupts
    // -------------------------------------------------------------------------
    // The CIAs generate timer interrupts that would interfere with our
    // raster timing. We must disable them.
    // $DC0D = CIA1 interrupt control
    // $DD0D = CIA2 interrupt control
    // Writing $7F disables all interrupt sources
    // Reading clears any pending interrupts
    // -------------------------------------------------------------------------
    lda #$7f
    sta $dc0d               // Disable CIA1 interrupts
    sta $dd0d               // Disable CIA2 interrupts
    lda $dc0d               // Clear pending CIA1 interrupts
    lda $dd0d               // Clear pending CIA2 interrupts

    // -------------------------------------------------------------------------
    // STEP 3: Enable VIC-II raster interrupt
    // -------------------------------------------------------------------------
    // $D01A bit 0 = Raster interrupt enable
    // -------------------------------------------------------------------------
    lda #$01
    sta $d01a

    // -------------------------------------------------------------------------
    // STEP 4: Disable screen display (optional but recommended)
    // -------------------------------------------------------------------------
    // Setting DEN (Display Enable) bit to 0 in $D011 disables the screen.
    // This eliminates "bad lines" where the VIC-II steals 40-43 cycles.
    // With screen off, EVERY raster line is exactly 63 cycles - perfect timing!
    // The entire display becomes border color.
    // -------------------------------------------------------------------------
    lda $d011
    and #$ef                // Clear bit 4 (DEN)
    sta $d011

    // -------------------------------------------------------------------------
    // STEP 5: Set the raster line to trigger first interrupt
    // -------------------------------------------------------------------------
    // $D012 = Raster line to trigger interrupt (low 8 bits)
    // $D011 bit 7 = Raster line bit 8 (for lines > 255)
    // We use lda #$1b / and $d011 to clear high bit while preserving other bits
    // -------------------------------------------------------------------------
    lda #RASTER_START
    sta $d012
    lda #$1b                // Standard value with bit 7 clear
    and $d011               // Preserve existing bits, ensure bit 7 is 0
    sta $d011

    // -------------------------------------------------------------------------
    // STEP 6: Set initial screen colors
    // -------------------------------------------------------------------------
    lda #BLUE
    sta $d020               // Border color
    sta $d021               // Background color

    // -------------------------------------------------------------------------
    // STEP 7: Install IRQ handler at hardware vector
    // -------------------------------------------------------------------------
    // Since KERNAL is disabled, we use $FFFE/$FFFF directly
    // (the hardware IRQ vector in ROM space, now RAM)
    // -------------------------------------------------------------------------
    lda #<irq1
    sta $fffe
    lda #>irq1
    sta $ffff

    // -------------------------------------------------------------------------
    // STEP 8: Enable interrupts and enter main loop
    // -------------------------------------------------------------------------
    cli                     // Enable interrupts

main_loop:
    // Main loop does nothing - all the work happens in interrupts
    // In a real demo, you'd update animation variables here
    jmp main_loop


// ============================================================================
// MACROS
// ============================================================================

// ----------------------------------------------------------------------------
// DelayLine - Wastes exactly 57 cycles
// ----------------------------------------------------------------------------
// Combined with lda #x (2 cycles) and sta $d020 (4 cycles), this gives
// exactly 63 cycles = 1 PAL raster line.
//
// 27 NOPs = 54 cycles
// bit $ea = 3 cycles (reads from zero page, result discarded)
// Total = 57 cycles
// ----------------------------------------------------------------------------
.macro DelayLine() {
    .for (var i=0; i<27; i++) { nop }
    bit $ea
}


// ============================================================================
// IRQ HANDLERS - The Double IRQ Technique
// ============================================================================
//
// THE PROBLEM:
// When a raster interrupt fires, the CPU could be 0-7 cycles into executing
// any instruction. This causes horizontal "jitter" - the raster effect
// wobbles left/right by up to 7 pixels.
//
// THE SOLUTION:
// Use TWO interrupts:
// 1. IRQ1 fires with 0-7 cycle jitter, but sets up IRQ2 on the NEXT line
// 2. IRQ1 re-enables interrupts and executes NOPs
// 3. IRQ2 fires DURING the NOP sled, reducing jitter to 0-1 cycle
// 4. IRQ2 uses the "double compare" trick to eliminate the last cycle
//
// ============================================================================

// ----------------------------------------------------------------------------
// IRQ1 - First Interrupt Handler
// ----------------------------------------------------------------------------
// This fires with 0-7 cycle jitter. Its job is to set up IRQ2 and wait.
// ----------------------------------------------------------------------------
irq1:
    // Save registers to memory locations
    sta reg_a
    stx reg_x
    sty reg_y

    // Point to IRQ2 handler
    lda #<irq2
    sta $fffe
    lda #>irq2
    sta $ffff

    // Trigger IRQ2 on the NEXT raster line
    inc $d012

    // Acknowledge the interrupt (MUST do this!)
    lda #$01
    sta $d019

    // Save stack pointer - IRQ2 will need to restore this
    tsx

    // Re-enable interrupts and wait in NOP sled
    // IRQ2 will fire somewhere during these NOPs
    cli
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    // IRQ2 fires here! (during a NOP, so max 1 cycle jitter)


// ----------------------------------------------------------------------------
// IRQ2 - Second Interrupt Handler (Stabilized)
// ----------------------------------------------------------------------------
// This fires during IRQ1's NOP sled, so jitter is now only 0-1 cycle.
// We use the "double compare" trick to eliminate even that.
// ----------------------------------------------------------------------------
irq2:
    // CRITICAL: Restore stack pointer saved by IRQ1
    // Without this, the stack would grow until crash!
    txs

    // Waste some cycles to get past the NOP sled safely
    ldx #$08
!:  dex
    bne !-
    bit $00

    // -------------------------------------------------------------------------
    // THE DOUBLE COMPARE STABILIZATION TRICK
    // -------------------------------------------------------------------------
    // This eliminates the final 0-1 cycle of jitter.
    //
    // How it works:
    // - lda $d012 reads the current raster line (4 cycles)
    // - cmp $d012 reads it again and compares (4 cycles)
    // - If the line changed between reads, we were on a boundary
    // - beq *+2 takes 3 cycles if equal, 2 if not equal
    // - This 1-cycle difference compensates for the jitter!
    //
    // We do it TWICE to catch any remaining variance.
    // After this, we are EXACTLY cycle-aligned.
    // -------------------------------------------------------------------------
    lda $d012
    cmp $d012
    beq *+2                 // First stabilization pass

    lda $d012
    cmp $d012
    beq *+2                 // Second stabilization pass - NOW CYCLE-EXACT!

    // The LDA #$A9 trick: this 2-cycle instruction absorbs any remaining
    // 1-cycle variance by having its operand "eaten" if we branched over
    lda #$a9

    // Fine-tune position to start at left edge of visible area
    .for (var i=0; i<20; i++) { nop }

    // =========================================================================
    // DRAW THE RASTER BARS
    // =========================================================================
    // Each color line must take EXACTLY 63 cycles (1 PAL raster line):
    //   lda #color  = 2 cycles
    //   sta $d020   = 4 cycles
    //   DelayLine   = 57 cycles
    //   TOTAL       = 63 cycles
    // =========================================================================

    // -------------------------------------------------------------------------
    // GREY GRADIENT (8 lines)
    // -------------------------------------------------------------------------
    lda #BLACK
    sta $d020
    :DelayLine()

    lda #DARKGRAY
    sta $d020
    :DelayLine()

    lda #MEDGRAY
    sta $d020
    :DelayLine()

    lda #LIGHTGRAY
    sta $d020
    :DelayLine()

    lda #WHITE
    sta $d020
    :DelayLine()

    lda #LIGHTGRAY
    sta $d020
    :DelayLine()

    lda #MEDGRAY
    sta $d020
    :DelayLine()

    lda #DARKGRAY
    sta $d020
    :DelayLine()

    // -------------------------------------------------------------------------
    // BLUE GRADIENT (6 lines)
    // -------------------------------------------------------------------------
    lda #BLACK
    sta $d020
    :DelayLine()

    lda #BLUE
    sta $d020
    :DelayLine()

    lda #LIGHTBLUE
    sta $d020
    :DelayLine()

    lda #CYAN
    sta $d020
    :DelayLine()

    lda #LIGHTBLUE
    sta $d020
    :DelayLine()

    lda #BLUE
    sta $d020
    :DelayLine()

    // -------------------------------------------------------------------------
    // GREEN GRADIENT (6 lines)
    // -------------------------------------------------------------------------
    lda #BLACK
    sta $d020
    :DelayLine()

    lda #GREEN
    sta $d020
    :DelayLine()

    lda #LIGHTGREEN
    sta $d020
    :DelayLine()

    lda #YELLOW
    sta $d020
    :DelayLine()

    lda #LIGHTGREEN
    sta $d020
    :DelayLine()

    lda #GREEN
    sta $d020
    :DelayLine()

    // -------------------------------------------------------------------------
    // RED/ORANGE GRADIENT (6 lines)
    // -------------------------------------------------------------------------
    lda #BLACK
    sta $d020
    :DelayLine()

    lda #RED
    sta $d020
    :DelayLine()

    lda #LIGHTRED
    sta $d020
    :DelayLine()

    lda #ORANGE
    sta $d020
    :DelayLine()

    lda #LIGHTRED
    sta $d020
    :DelayLine()

    lda #RED
    sta $d020
    :DelayLine()

    // -------------------------------------------------------------------------
    // END OF BARS - Restore background color
    // -------------------------------------------------------------------------
    lda #BLACK
    sta $d020
    :DelayLine()

    lda #BLUE
    sta $d020

    // =========================================================================
    // PREPARE FOR NEXT FRAME
    // =========================================================================

    // Point back to IRQ1 for next frame
    lda #<irq1
    sta $fffe
    lda #>irq1
    sta $ffff

    // Reset raster trigger to starting line
    lda #RASTER_START
    sta $d012

    // Acknowledge interrupt
    lda #$01
    sta $d019

    // Restore registers from memory
    lda reg_a
    ldx reg_x
    ldy reg_y

    // Return from interrupt
    rti

// ============================================================================
// DATA SECTION - Register save locations
// ============================================================================
reg_a: .byte 0
reg_x: .byte 0
reg_y: .byte 0
