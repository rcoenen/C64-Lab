# Sparkle 3.2 User Manual

## Table of Contents

- [Introduction](#introduction)
- [Summary of Loader Features](#summary-of-loader-features)
- [A Simple Project](#a-simple-project)
- [The Sparkle PC Tool](#the-sparkle-pc-tool)
- [The Loader Script](#the-loader-script)
  - [Disk Info](#disk-info)
  - [File Bundles](#file-bundles)
  - [File Entry Syntax](#file-entry-syntax)
  - [File Parameter Expressions](#file-parameter-expressions)
  - [Files Under I/O](#files-under-io)
  - [Embedded Script Entries](#embedded-script-entries)
  - [Plugins and Hi-Score Files](#plugins-and-hi-score-files)
  - [Commenting](#commenting)
  - [Multi-Side Productions](#multi-side-productions)
- [Runtime Considerations](#runtime-considerations)
  - [Loader Functions](#loader-functions)
  - [Other Important Addresses](#other-important-addresses)
  - [The Internal Directory](#the-internal-directory)
  - [Loading to the RAM Under I/O Registers](#loading-to-the-ram-under-io-registers-d000-dfff)
  - [Switching VIC Banks](#switching-vic-banks)
  - [Bus Lock](#bus-lock)
  - [Requesting a Disk Side](#requesting-a-disk-side)
  - [Loader Plugins](#loader-plugins)
- [Sparkle's Compression and Disk Utilization](#sparkles-compression-and-disk-utilization)
- [Common Issues](#common-issues)
- [Disclaimer](#disclaimer)
- [Version History](#version-history)

---

## Introduction

Sparkle is an easy-to-use "all-in-one" cross-platform solution to creating multi-file Commodore 64 projects with an IRQ loader (demo, game, disk magazine, music collection, etc.), inspired by the loaders of Lft, Krill, and Bitbreaker. The Sparkle PC tool will generate D64 disk images using the information you provide in a text file called the loader script that will allow you to load your files, code, data, music, etc. in the order of your preference with a state-of-the-art IRQ loader and simple loader calls. You don't need to worry (or even know much) about file compression and decompression, loader installation, or disk layout, the Sparkle PC tool will take care of these and much more.

This manual will explain how you can use the Sparkle PC tool and the IRQ loader to create D64 disk images. For a description of new features please see [Version History](#version-history).

---

## Summary of Loader Features

- Tested on 1541, 1541-II, 1571, and Oceanic drives, compatible with the 1541 Ultimate family.
- Resident size: `$2a0` bytes including loader, depacker, fallback IRQ (`$0160-$02ff`), and buffer (`$0300-$03ff`). The buffer contains preloaded data between loader calls, so it needs to be left untouched for sequential loading. The stack is reduced to `$0100-$015f` but can be expanded if certain loader features are not used.
- Only three bytes are clobbered in the zeropage which can be selected from the script. Default is `$02-$04`. OK to use them between loader calls.
- 124-cycle GCR fetch-decode-verify loop tolerating disk rotation speeds of at least 272-314 rpm across all four disk zones providing high reliability. Checksum verification is done on-the-fly in disk zones 0-2 and partially outside the GCR loop in zone 3.
- C64 reset detection. The drive also resets if C64 reset is detected.
- 2Bit+ATN transfer protocol, 72 cycles/byte transfer speed. Transfer is freely interruptible.
- Spartan Stepping™ for seamless data transfer across adjacent tracks with zero additional stepper delay.
- Supports both sequential and bundle index-based loading with max. 128 directory entries and two alternative directory population methods.
- Built-in block-wise packer/depacker. The packer compresses file bundles back-to-back, eliminating zero-padding of the last sector of the bundles. This way no partially used sectors are left on the disk.
- Combined fixed-order and out-of-order loading.
- Bus lock. The loader uses `$dd00` for communication. By default, the user can freely alter `$dd02` between loader calls, as long as its value is restored before the next loader call. Bus lock via `$dd02` is also available if the user wishes to manipulate `$dd00`.
- Hi-score file saver plugin. Sparkle can save by overwriting pre-defined hi-score files. Saving is also freely interruptible.
- Custom drive code plugin. Upload your own drive code then restore Sparkle with simple calls.
- Loading to and saving from the RAM under the I/O registers (`$d000-$dfff`).
- 40-track disk support adding 85 sectors to the standard 35-track disk.
- PAL and NTSC support, including the plugins.

---

## A Simple Project

Let's start with the simplest Sparkle project. Create a very simple PRG, something along the lines of:

```asm
* = $2000

inc $d020
jmp *-3
```

Compile it and save it as `test.prg` in a `test` folder. Now open a text editor, create a new text file and add the following line:

```
File:	"test.prg"
```

Save the file as `test.sls` in your test folder. For the sake of simplicity, also copy the Sparkle PC tool in the same directory. Then open a command line terminal, navigate to the test folder and run the following command on a Windows PC:

```bash
sparkle test.sls
```

or this one on Linux or macOS:

```bash
./sparkle test.sls
```

And that's it. You'll find a `test.d64` disk image in the test folder with a single entry in its directory. Loading and running this entry will install the loader which will then load and execute our simple test program.

---

## The Sparkle PC Tool

While previous versions of the Sparkle PC tool had a GUI with a script editor and only worked on Windows machines, starting with version 3.0, it is now a cross-platform command-line tool. As discussed above, use the:

```bash
sparkle script.sls
```

command format (or its Linux/macOS version) to create a D64 disk image. Sparkle only accepts loader script files with the `.sls` (Sparkle Loader Script) extension. The command-line argument should specify the path and file name of the script file. You can provide either the absolute path of the script or a path relative to the Sparkle PC tool.

On Windows, the Command Prompt window may close automatically when Sparkle exits (if it was not already open when Sparkle was started). To overcome this, you can use the optional command line parameter: `-p` with value `a` or `e`. Use this parameter if you want Sparkle to pause on exit and wait for Enter to be pressed before finishing. If you only want to pause on error, then use it with the value `e`. To always pause on exit, use it with the value `a`. The `-p` command line parameter must always be preceded by the script file name:

```bash
sparkle script.sls -p a
```

---

## The Loader Script

The loader script is a simple text file consisting of a list of entries divided by line breaks and formatted into sections that are separated by empty lines. These sections provide all the necessary information required to create the desired disk image(s). Sparkle interprets entries sequentially from the beginning of the script file to its end. Here is an example script:

```
Path:       "path/name.d64"     << Path and file name of the D64 disk image
Header:     mydemoheader        << Directory header, max. 16 characters
ID:         dirid               << Directory ID, max. 5 characters
Name:       mydemoname          << First dir entry's name, max. 16 characters
Start:      xxxx                << Program's start address, 4-digit hex number
DirArt:     "path/file"         << File from which DirArt will be imported
Tracks:     35                  << Number of tracks on disk, 35 vs. 40
IL0:        4                   << Interleave for tracks 1-17, n = 1-14 (hex)
IL1:        3                   << Interleave for tracks 18-24, n = 1-12 (hex)
IL2:        3                   << Interleave for tracks 25-30, n = 1-11 (hex)
IL3:        3                   << Interleave for tracks 31+, n = 1-10 (hex)
ProdID:     10aded              << Product ID, 6-digit hex number
ThisSide:   00                  << This side's index, 2-digit hex number
NextSide:   01                  << Next side's index, 2-digit hex number
ZP:         02                  << Loader ZP address, set once per script

File:       "path/file0" aaaa bbbb cccc     << File #00 in Bundle #00

DirIndex:   01                  << Directory index, 2-digit hex number (01-7f)
Align                           << Start this bundle in a new sector
Mem:        "path/file0" aaaa bbbb cccc     << Defines static memory segment
File:       "path/file1"* aaaa bbbb cccc    << File #00 in Bundle #01 under I/O
File:       {path/file2} aaaa bbbb cccc     << File #01 in Bundle #01 unpacked

Script:     "path/script"       << Embedded script path and file name

Plugin:     common              << Include the Common Drive Code plugin
Plugin:     saver               << Include the Saver plugin

HSFile:     "path/hsfile" aaaa bbbb cccc    << Hi-score file
```

Script entries typically consist of an entry type identifier and one or more values separated by one or more TAB characters (except for the `Align` entry type). The number of TAB characters is arbitrary, and it is ok to use more than one to format the text. SPACE is only accepted as separator if the value of the entry is placed between "double quotation marks" or {curly brackets} (see [File Entry Syntax](#file-entry-syntax)). Entries not recognized by the Sparkle PC tool will be ignored, providing plenty of opportunity for commenting.

Entries can be categorized into three main groups: disk info, file bundle, and plugin entries. Disk info entries specify settings related to the disk image (things that you would define once per disk and project). Bundle entries define the files and data on the disk. Plugins allow uploading custom code to the drive and file saving by overwriting predefined "hi-score" files. The presence of disk info entries will prompt Sparkle to finish any disk image in progress and start a new one. This way, it is enough to simply add a new disk info section after the last file bundle of the last disk to start the next disk in a multi-disk project, allowing you to create all the disks of the project using a single script. It is also possible, however, to use a separate script for each disk side in the project.

At minimum, the script must contain at least one `File` entry. Everything else is optional and can be omitted. If a disk info section does not precede the first bundle, then Sparkle will use default disk parameters for the first disk as outlined below (except if this script is meant to be embedded in another one in which case the disk section of the parent script will be used).

File paths in the script can be either absolute or relative. Relative paths are interpreted in relation to the script file's absolute path on your computer.

### Disk Info

You can define all necessary settings related to the disk image here. The order of entries is arbitrary and any or all disk info script entries can be omitted in which case their default value is used, or the feature is not included on the disk. The following entry types are recognized:

| Entry | Description |
|-------|-------------|
| `Path:` | Here you can specify the final D64 file's path and name. Sparkle will use this information when the disks are created. Both `\` and `/` are recognized and accepted as file path separators. If omitted the script's path and name will be used to create a disk image. |
| `Header:` | Max. 16 characters that will be used as the disk's directory header which is on the left side of the topmost inverted row in the disk's directory structure. You can omit this entry if you want to import it from a D64 or ASM DirArt file. |
| `ID:` | Max. 5 characters that will be located on the right side of the header in the directory structure. You can omit this entry if you want to import it from a D64 or ASM DirArt file. |
| `Name:` | The demo's name. Max. 16 characters. This will be the first directory entry on the disk, and it will load the installer from track 18. You can omit this entry if you want to import it from a DirArt file. If a DirArt is not provided and the entry is omitted, then the script's file name will be used as the first directory entry. |
| `Start:` | The start address (program entry) of the demo. Once the loader is installed, it will load the first file bundle from the disk automatically and then it will jump to this address. If not specified, Sparkle will use the load address of the first file in the first bundle as a start address. (This is the only time the file order matters in a bundle.) |
| `Tracks:` | Specifies whether this is a standard 35-track disk (default) or an extended, 40-track disk. This entry only accepts `35` or `40` as input. This entry is not needed for 35-track disks. |
| `IL0:` | As well as `IL1:`, `IL2:`, and `IL3:`. These entries specify the sector interleave, i.e., the distance in sectors between two consecutive data blocks on the disk. The default values (if these entries are not used) are 4 for tracks 1-17 (IL0), and 3 for tracks 18-24 (IL1), 25-30 (IL2), and 31+ (IL3). Sparkle accepts decimal values between 1 and the number of sectors in a track less 1 (20, 18, 17, and 16, respectively) for each speed zone (the modulo of the number of sectors per track and the interleave in zone cannot be 0). |
| `ProdID:` | Product ID. This is a unique identifier consisting of max. 6 hex digits which is used to identify disks that belong together in a multi-disk production. The Product ID is a global setting, it should be specified once and is shared by all the disks built from a single script. This way disks from another script will not be accepted during disk flipping. If a Product ID is not entered, then Sparkle will generate a pseudorandom number every time the script is processed. |
| `ThisSide:` | The current disk side's ID. A 2-digit hex number (`$00-$7e`) that identifies the current disk side. This is used when a new disk side is requested. By default, Sparkle assigns this automatically to subsequent disk sides, starting with `$00`. |
| `NextSide:` | The next disk side's ID. A 2-digit hex number (`$00-$7e`) that identifies the next disk side in sequence. This is used when a new disk side is requested using a `LoadNext` call. By default, Sparkle assigns this automatically to subsequent disk sides, starting with `$00`. |
| `ZP:` | Zeropage usage, a 2-digit hex number. Sparkle uses 3 bytes in the zeropage. The default is `$02-$04`. If this suits your needs, the ZP entry can be skipped. If this interferes with your demo (e.g., SID uses the same addresses), then you can change it here. This is a global setting and should be specified once per script, in the first disk's info section, and it will be used for the rest of the demo. |

#### DirArt Formats

There are 6 sectors available on track 18 for DirArt (max 48 directory entries, including the one specified at the `Name` script entry). Each DirArt directory entry will have a PRG file type and will start the demo but only the very first one will have a non-0 block size. Sparkle accepts several different file formats:

- **D64 files:** Sparkle will simply import the directory structure of the D64 file. If the `Name` entry is omitted in the script, then the first DirArt entry's type will be changed to PRG, but otherwise Sparkle will keep the entry types in the DirArt. Sparkle will also import the header and the disk ID if the `Header` and `ID` entries are absent in the script.

- **TXT files:** These are standard text files with line breaks after max. 16 characters. If a line is longer than 16 characters, then Sparkle will use the first 16 characters of it as a DirArt entry.

- **PRG files:** Sparkle accepts two file formats: screen RAM grabs (40-byte long char rows of which the first 16 is used as directory entries, can be more than 25 char rows long) and `$a0` byte terminated directory entries.

- **BIN files:** Sparkle will treat this file type the same way as PRGs, less the address bytes.

- **ASM files:** KickAss ASM DirArt source file. The ASM file may contain both disk and file parameters within `[]` brackets.

- **C files:** Marq's PETSCII Editor C file. This file type can also be produced using Petmate.

- **PET files:** This format is supported by Marq's PETSCII Editor and Petmate.

- **JSON files:** This format can be created using Petmate.

- **PNG files:** Portable Network Graphics image file. Image input files can only use two colors (background and foreground). Image width must be a multiple of 128 pixels covering exactly 16 characters and the height must be a multiple of 8 pixels.

- **BMP files:** Bitmap image file. Same rules and limitations as with PNGs.

### File Bundles

Instead of loading files one by one, Sparkle can bundle them together and load them in batches. A file bundle is the sum of arbitrary files and data segments designated to be loaded during a single loader call. You can put any number of files and data segments in a bundle, provided they do not overlap in the memory. Files in a bundle don't need to occupy consecutive memory segments. The more you put in a bundle, the faster loading will be.

Each bundle consists of consecutive text lines forming a section in the script. The following entry type identifiers can be used in a bundle:

| Entry | Description |
|-------|-------------|
| `DirIndex:` | Sparkle uses its own internal directory for random access and by default assigns a directory entry index to each bundle, starting with `$00`, up to `$7f`. Use the `DirIndex` entry type with a 2-digit hex number between `$01-$7f` to assign a specific directory index to a bundle. `DirIndex` value `$00` is preserved for bundle 0. **If Sparkle finds at least one `DirIndex` entry in the script, then only bundles with a `DirIndex` will be added to the internal directory.** |
| `Align` | This is a parameterless bundle-specific setting (used without `:`) that determines how Sparkle will add this bundle to the disk. By default, Sparkle saves compressed bundles back-to-back on the disk, leaving no unused space between bundles. Add the `Align` keyword before the first file in the bundle to ensure Sparkle begins the new bundle in a new sector. |
| `File:` | The File entry is the essence of the script. File entries in a bundle must occupy consecutive text lines. An empty line in the script will trigger the start of a new bundle. |
| `Mem:` | This entry defines a static memory segment that can be used as dictionary to improve the compression of the files in the bundle. The format is the same as the `File` entry type. |

### File Entry Syntax

`File`, `HSFile`, and `Mem` entries must specify at least a file name with absolute or relative path and 0-3 file parameters.

- By default, the file name and file parameters are separated by an arbitrary number of tabulator characters.
- Alternatively, putting the file name in `"double quotes"` will allow the use of space as parameter separator.
- Using `{curly brackets}` instead of double quotes around the file name will instruct Sparkle to leave the file uncompressed and will also allow the use of space as parameter separator.

#### Default File Parameter Syntax

By default, the first file parameter after the file name is the **load address** of the file segment, the second one is an **offset** within the original file that marks the first byte to be loaded, and the last one is the **length** of the file segment. File parameters are hexadecimal numbers by default in word format (max. 4 digits) for the file address and file length, and double word format (max. 8 digits) in the case of the file offset. Hex prefix is not needed. Decimal number format can also be used by adding the `.` prefix to the parameters.

For example, in the following bundle the file entries will load 3 sections of a koala file to three different memory locations:

```
File:	path/koala.kla	4000	.0002	.8000
File:	path/koala.kla	6000	.8002	.1000
File:	path/koala.kla	d800	.9002	.1000
```

- First entry: loads `$1f40` bytes of bitmap data from offset 2 to memory address `$4000`
- Second entry: loads `$3e8` bytes of screen RAM data from decimal offset 8002 (`$1f42`) to memory address `$6000`
- Third entry: loads `$3e8` bytes from decimal offset 9002 (`$232a`) to the color RAM

Parameters can be omitted but each one depends on the one on its left:
- If all three parameters are omitted then Sparkle will load the file as a PRG file
- If only the load address is entered, then Sparkle will use 0 for the offset and the file's length as length
- If the load address and the offset are given but the length is not, Sparkle will calculate the length as (original file's length – offset)

#### Alternative File Parameter Syntax

For PRG files, if `-` (hyphen) is provided as the first parameter, then the second one will be interpreted as the memory address of the first byte to be loaded from the file, and the third parameter as the memory address of the last byte to be loaded:

```
File:	"Part.prg"	-	2000	2fff	<< load from Part.prg to $2000-$2fff
```

This is equivalent to:

```
File:	"Part.prg"	2000	1801	1000
```

### File Parameter Expressions

Sparkle also accepts mathematical expressions as file parameters in `File`, `HSFile`, and `Mem` entries. Parameter formulas must start with `=`. When such a file parameter is found, Sparkle will evaluate the expression and calculate the file parameter.

Expressions must use the same number formats as described above. Any number without a prefix will be interpreted as a hexadecimal number. For decimal numbers, use the `.` prefix:

```
File:	path/myfile.prg	=2000+(4*.256)	= 2 + (4 * .256)	100
```

`$2400` will be used for load address, and `$0402` for offset.

### Files Under I/O

By default, Sparkle writes `#$35` to input/output register `$01` and turns the BASIC and KERNAL ROMs off during loading but leaves I/O on. If any part of a file is to be loaded in the RAM under the I/O area (`$d000-$dfff`), an asterisk (`*`) must be added to the end of the file name. This will instruct Sparkle to turn off the I/O area while unpacking the file. If the `*` is omitted the file will be loaded to the I/O area (VIC, SID, and CIA registers, color RAM etc.).

### Embedded Script Entries

Scripts can become very long, so you may want to create shorter scripts, and then embed these in your main script. This is done by adding the `Script:` entry type as a separate "bundle" followed by the embedded script's path and file name. When Sparkle reaches a `Script` entry during disk building, it will first process its content before continuing with the next entry.

Scripts cannot be inserted into an existing file bundle. Files in the embedded script will always start a new file bundle and won't be added to the current bundle.

### Plugins and Hi-Score Files

Plugins and hi-score files can be placed anywhere in the loader script after the disk info section, but it is recommended to group them either before or after the file bundles. Each plugin and hi-score file entry must be in a separate bundle. On the disk, plugin and hi-score files will follow the last regular file bundle.

| Entry | Description |
|-------|-------------|
| `Plugin:` | Specifies a loader plugin. Currently `saver` and `custom` are accepted as values, for the file saver and the custom drive code plugins, respectively. Each plugin entry will use 2 sectors on the disk. |
| `HSFile:` | Hi-score file. This entry adds a file to the disk that can be later overwritten using the saver plugin. The syntax is the same as `File` and `Mem` entries. Each `HSFile` entry must be preceded by its own saver plugin entry. |
| `PlgIndex:` | Plugin-specific directory index. Like `DirIndex`, but will not restrict index-based loading. `PlgIndex` values must be greater than the number of file bundles on the disk. |

### Commenting

Sparkle allows commenting the script and in general, it will interpret any unrecognized entries as comments. Comments can be added essentially anywhere, provided they are in a separate text line or follow an entry in the same line but are separated by one or more tabs from the entry:

```
<< Block comment
File:	path/file	xxxx	yyyyyyyy	zzzz	<< inline comment
```

### Multi-Side Productions

To create a multi-disk project simply add the second disk's info section to your script after the last bundle of the first disk (separated by at least one empty line) then start adding its file bundles. For disk flipping to work, Sparkle must be able to determine whether the inserted disk is part of the production and if it is the requested disk side. Sparkle uses the `ProdID`, `ThisSide`, and `NextSide` entries for this purpose.

The simplest way to create a multi-side production is building all disk sides from a single script to make sure disks are properly numbered and use the same Product ID. This way, the `ProdID` only needs to be defined once, in the first disk's info section, and the `ThisSide` and `NextSide` entries can be omitted.

---

## Runtime Considerations

Sparkle's own code is stored on track 18. The installer and the C64 resident code take 4 blocks, the drive code an additional 6 blocks, and the internal directory another 2 blocks. The remaining 6 blocks on track 18 can be used for DirArt. This leaves the entire 664 blocks of a standard 35-track disk for your project.

All directory entries in a Sparkle disk's standard directory point at the installer but only the first entry shows the block count. Loading any of the directory entries will load the installer and not the first file or bundle on the disk. When you run the installer, it will install the C64 resident code and the drive code, set the I flag, write `#$35` to `$01`, and reduce the stack to the lower `$60` bytes. After this, it will automatically load the first file bundle.

The C64 resident code resides at `$0160-$02ff` and the loader buffer is at `$0300-$03ff`. The C64 resident code has the following memory layout:

| Address | Function |
|---------|----------|
| `$0160-$0179` | Sparkle_IRQ |
| `$017a-$019b` | Sparkle_SendCmd |
| `$019c-$019e` | Sparkle_LoadA |
| `$019f-$02ff` | Sparkle_LoadNext + depacker |
| `$0300-$03ff` | Loader buffer |

This layout allows freeing up more stack space if certain functions are not required in your project. E.g., if you want to use your own fallback IRQ then you can set the stack pointer to `$79`. If your project also only uses sequential loader calls, then you can further extend the stack to `$9e`.

### Loader Functions

From your code, the following functions are available:

#### Sparkle_LoadNext (`JSR $21c`)
*Sequential loader call, parameterless, loads next bundle in sequence*

This parameterless call will load the next bundle of files in sequence, as specified in the script. When the loader is called, it first depacks the first partial block of the next bundle from the buffer before receiving the next block from the disk. Therefore, the loader buffer must be left untouched between sequential loader calls.

Once the very last bundle is loaded from a disk, the next sequential loader call will instruct Sparkle to check whether a subsequent disk side is expected. In case of a multi-disk demo, the loader will move the read/write head to track 18 and wait for the new disk side to be inserted.

#### Sparkle_LoadA (`JSR $19c`)
- `A=$00-$7f` – bundle index-based loader call
- `A=$80-$fe` – requests a new disk & loads first bundle automatically

This call will load the bundle specified by the index in A. Sparkle can handle bundle indices between `$00-$7f` (0-based).

```asm
lda #bundle_index     ; loads bundle with index in A
jsr Sparkle_LoadA

lda #$80+disk_index   ; requests disk with index in A
jsr Sparkle_LoadA     ; then auto-loads first bundle
```

#### Sparkle_SendCmd (`JSR $17a`)
- `A=$00-$7f` – requests a bundle and prefetches its first sector
- `A=$80-$fe` – requests a new disk without auto-loading its first bundle
- `A=$ff` – resets the drive

This function can be used to send commands to the drive without necessarily loading anything:

```asm
lda #bundle_index     ; prefetches first sector
jsr Sparkle_SendCmd   ; of requested bundle
...
jsr Sparkle_LoadFetched   ; loads prefetched bundle
```

#### Sparkle_LoadFetched (`JSR $19f`)
Loads a prefetched bundle, use only after fetching a bundle with `Sparkle_SendCmd` (`A=bundle_index`).

### Other Important Addresses

| Address | Description |
|---------|-------------|
| `$0160` (Sparkle_IRQ) | A very simple fallback IRQ which contains a single JSR instruction. You can use this IRQ between parts for example. |
| `$016e` (Sparkle_IRQ_JSR) | The address of a JSR instruction within the fallback IRQ that at start points at an RTS instruction. You can change it to music player call, for example. |
| `$0179` (Sparkle_IRQ_RTI) | The address of the RTI instruction at the end of the fallback IRQ. |

### The Internal Directory

Sparkle uses its internal directory for random bundle access. The internal directory takes the last two sectors (512 bytes) of track 18. Each directory entry uses 4 bytes; thus, there can be maximum 128 directory entries. Entries have the following format:

| Offset | Description |
|--------|-------------|
| `$00` | Track |
| `$01` | First sector on track in sequence (not first sector of bundle) |
| `$02` | Sectors remaining on track |
| `$03` | Offset of first byte in first sector of bundle |

### Loading to the RAM Under I/O Registers ($D000-$DFFF)

Sparkle will change the value of input/output register `$01` to `#$34` when loaded data gets decompressed to the RAM under the I/O registers. Thus, I/O registers (VIC, SID, etc.) may not be directly accessible when loading is interrupted by an IRQ. Therefore, if you want to load under I/O, you must also make sure your code can handle this situation:

```asm
Sparkle_IRQ:    pha
                txa
                pha
                tya
                pha
                lda $01
                pha             ; save $01 to stack
                lda #$35        ; set $01 to #$35 to allow access
                sta $01         ; to I/O registers
                inc $d019
Sparkle_IRQ_JSR: jsr MusicPlay
                pla
                sta $01         ; restore $01 from stack
                pla
                tay
                pla
                tax
                pla
Sparkle_IRQ_RTI: rti
```

### Switching VIC Banks

Sending data from the C64 to the floppy drive relies on the state of two registers in the C64. Bits 3-5 in the CIA 2 Data Direction Register A (`$dd02`) turn data transmission from the C64 to the drive on or off, and the corresponding bits in the CIA2 Port A (`$dd00`) set the actual value of the transmitted data.

The C64 resident code of Sparkle uses `$dd00` to communicate with the drive. Changing the value of `$dd00` by the user may be misinterpreted by the loader as a drive command. To avoid this, you must use `$dd02` to select a VIC bank:

```asm
lda #$3c + VIC_Bank
sta $dd02
```

where the value of `VIC_Bank` is 0 for VIC bank 0, 1 for bank 1, etc.

### Bus Lock

Bus lock means setting either `$dd00` or `$dd02` to a specific value that allows free manipulation of the other register without transmitting data to the floppy drive.

#### Indirect Bus Lock (to allow unrestricted use of $DD02)

Once a loader job is complete, indirect bus lock is on by default:

```asm
jsr Sparkle_LoadNext
                        ; indirect bus lock is on by default
ldx #$00
Loop:
stx $dd02               ; any value permitted on $dd02
inx                     ; indirect bus lock remains active
bne Loop

lda #$3c+VIC_Bank       ; #$3c-#$3f for VIC banks 0-3
sta $dd02               ; restore default value on $dd02...
jsr Sparkle_LoadNext    ; ...before next loader call
```

#### Direct Bus Lock (to allow free manipulation of $DD00)

```asm
jsr Sparkle_LoadNext
                        ; indirect bus lock active by default
lda #$03
sta $dd02               ; turn on direct bus lock
                        ; both direct and indirect bus locks are on
ldx #$00
Loop:
stx $dd00               ; any value permitted on $dd00
inx                     ; direct bus lock remains active
bne Loop

lda #$38                ; restore indirect bus lock
sta $dd00               ; direct bus lock is still active
lda #$3c+VIC_Bank       ; restore default value on $dd02...
sta $dd02               ; ...turning direct bus lock off

jsr Sparkle_LoadNext
```

### Requesting a Disk Side

Sparkle stores the current and the next disk's indices in the BAM. From your code, there are three different ways to request the next or any other disk side:

1. Once the final bundle of a disk side is loaded, the next `Sparkle_LoadNext` sequential loader call will move the read/write head to track 18 and Sparkle will keep fetching the BAM until the next disk's index is detected.

2. You may use the `Sparkle_LoadA` call with `A=#$80+disk_index` to request an arbitrary disk side.

3. To skip loading the first bundle after disk change, use the `Sparkle_SendCmd` function with `A=#$80+disk_index`.

#### Disk Flipping Using Nonblocking Calls

**Requesting a disk side and loading the first bundle:**

```asm
; 1. Request the next disk side
lda #$80+disk_index
jsr Sparkle_SendCmd

; 2. Send "ready-to-receive" signal
lda #$08
sta $dd00

; 3. Poll $dd00 for drive ready
PollDrive:
bit $dd00
bpl DriveReady          ; N=0, drive is ready to send
...                     ; N=1, drive is not ready, continue part
jmp PollDrive

; 4. Load the first bundle
DriveReady:
jsr Sparkle_LoadFetched
```

### Loader Plugins

#### Hi-Score Saver Plugin

Sparkle can overwrite predefined "hi-score files" on the disk. To include this plugin on the disk:

```
PlgIndex:   7e              << plugin directory index
Plugin:     saver

PlgIndex:   7f
HSFile:     "path/hsfile" aaaa bbbb cccc
```

To use the saver:

```asm
lda #PlgIndex           ; Plugin directory index of saver plugin
jsr Sparkle_LoadA       ; load the saver plugin to the buffer
lda #>FileSize          ; A=#$01+ to save, A=#$00 to abort saving
jsr Sparkle_Save        ; overwrite hi-score file ($0302)
...
lda #PlgIndex           ; Plugin directory index of hi-score file
jsr Sparkle_LoadA       ; reload hi-score file (if needed)
```

#### Custom Drive Code Plugin

This plugin consists of the drive-side and C64-side routines necessary to upload and execute custom code in the drive's RAM and then restore Sparkle's drive code once the custom drive code is no longer used.

```
PlgIndex:   7f
Plugin:     custom
```

**Functions:**

- **Sparkle_RcvDrvCode** (`JSR $0302`): Transfer and store Sparkle's drive code on the C64
  - `A` = number of pages to be transferred (`#$00-#$06`)
  - `X` = C64 destination address high byte

- **Sparkle_SendDrvCode** (`JSR $0380`): Upload custom drive code to the drive
  - `A` = number of custom drive code pages (`#$00-#$07`)
  - `X` = C64 source address high byte

**Example:**

```asm
lda #PlgIndex
jsr Sparkle_LoadA           ; Load plugin with its directory index

lda #$06                    ; 6 pages: $0300-$07ff + ZP
ldx #>SparkleBuffer         ; transfer and store Sparkle's drive
jsr Sparkle_RcvDrvCode      ; code on the C64

lda #$07                    ; 7 blocks: $0200-$07ff + ZP
ldx #>DriveCode             ; upload custom drive code
jsr Sparkle_SendDrvCode     ; and execute it

; Run part here

lda #$06                    ; parameters as in Sparkle_RcvDrvCode
ldx #>SparkleBuffer         ; restore Sparkle's drive code and
jsr Sparkle_SendDrvCode     ; continue standard loading operations

lda #BundleIndex            ; Load next part
jsr Sparkle_LoadA           ; must use index-based loader call
```

---

## Sparkle's Compression and Disk Utilization

Sparkle uses its own limited 16-bit offset LZ-based compression algorithm optimized for speed. It combines the benefits of bitstream-based and byte aligned algorithms. Each block on the disk gets compressed on its own to allow random access and buffer-based decompression on the C64. The algorithm therefore primarily uses the data already compressed in the block as dictionary. Data in the same bundle stored on previous tracks is also used automatically to further improve compression of blocks of the same bundle stored on subsequent tracks.

When compressed bundles are added to the disk, most of the time the last block of a bundle would remain partially unoccupied. Sparkle, however, doesn't leave any disk space unused, and it will start adding the next bundle by filling first the unused space of the previous bundle's last block, before starting a new block. These transitional blocks contain the end of one bundle and the beginning of the next bundle simultaneously.

---

## Common Issues

1. **Using `$dd00` to change VIC banks.** Sparkle uses `$dd00` to communicate with the drive. VIC bank selection must be done by writing `#$3c-#$3f` to `$dd02` (format: `#$3c+VIC_bank`, where `VIC_bank = $dd00 value ^ #$03`).

2. **Forgetting to restore `$dd02` to `#$3c+VIC_bank` before the next loader call.** Having any other value left in `$dd02` when the next loader call is issued may result in early reset of the drive.

3. **Restoring the stack pointer to `#$ff`.** This will result in overwriting the loader's resident code (`$0160-$02ff`) and thus, in a crash. Restore the stack pointer to `#$5f` instead.

4. **Overwriting the loader buffer.** The loader buffer (`$0300-$03ff`) contains the beginning of the next bundle between loader calls. It must be left untouched between sequential loader calls.

5. **Loading to pages 1-3.** This will overwrite the loader's resident code or the buffer and result in a crash.

6. **Failing to save, set and restore the value of `$01` in the IRQ when loading under the I/O area.** Your IRQ must save the value of `$01`, set it to `#$35` to enable accessing the I/O registers, and restore its original value at the end.

7. **Stacked IRQs crash during loading.** Make sure you save the CPU registers (A, X, Y) and the status of `$01` to different addresses from the second, stacked IRQ.

8. **Sparkle's zeropage addresses used by other processes during loading.** You can save and restore these zeropage addresses in your IRQ or change Sparkle's ZP usage in your script.

9. **Demo works in one emulator but not another.** Loading speeds may differ slightly. It is recommended to calculate with at least a 10-frame sync buffer, preferably 20 or more.

10. **File parameters separated by spaces instead of tabs.** Make sure the file parameters are separated by TAB characters or place the file name in double quotes.

11. **Corrupted files when using `Mem` entries.** Make sure the `Mem` entry describes a static memory segment that remains unchanged during loading and decompression of the bundle.

---

## Disclaimer

Sparkle is free software and is provided "as is". It is a hobby project of a hobby coder so use it at your own risk and expect bugs. I do not accept responsibility for any omissions, data loss or other damage.

Please credit me in your production should you decide to use Sparkle or any pieces of it. Feel free to contact me with any questions via PM on CSDb or by emailing me at spartaofomg AT gmail DOT com.

**GitHub Repository:** https://github.com/spartaomg/SparkleCPP

*Sparta, 2019-2025*

---

## Version History

### V3.2
- Reliability and stability improvements without compromising speed
- Multiple header block sanity checks and re-added trailing zero first nibble verification
- Improved track correction code
- Minor GCR loop adjustment for better high rotation speed tolerance in Zone 2 (272-314 rpm)
- Simplified track seek code
- Reworked plugin handling and syntax, allowing multiple plugins and hi-score files per disk side
- New `PlgIndex` entry type for plugin-specific directory indices
- Bug fixes

### V3.1
- New optional command line parameter: `-p [a/e]` to pause on exit
- Alternative File, HSFile, and Mem entry type syntax with double quotes and space separators
- Alternative file parameter syntax for PRG files using `-` hyphen
- Curly brackets for uncompressed files
- Multi-side D64s automatically marked with `_SideA/B` etc.
- Custom drive code plugin
- Updated bootstrap code for "Mount & Run" on Ultimate family
- Sparkle's installer no longer sets the NMI vector to an RTI instruction
- Bugfix for zeropage loading

### V3
- Full rewrite in C++, allowing cross-platform use (Windows, macOS, Linux)
- New memory layout of the C64 resident code (`$0160-$02ff`)
- Improved file compression with limited 16-bit match sequence offsets
- File parameter math expression evaluation
- Directory art import from multiple file formats (D64, PRG, TXT, BIN, C, PET, ASM, JSON, PNG, BMP)
- `DirIndex` bundle entry type for custom directory indices
- `ThisSide` and `NextSide` disk info entry types

### V2.2
- Decimal number format support for file parameters (`.` prefix)
- Header, ID, and Name entries can be left blank
- Slight improvement in compression efficacy

### V2.1
- Full rewrite of the GCR loop (269-314 rpm tolerance)
- Reintroduced second block buffer feature
- Implemented ATNA-based transfer loop
- Added full block ID check
- Script commenting support

### V2
- Random file access (bundle index-based loading)
- Hi-score file saver plugin
- Product ID for multi-disk productions
- NTSC support
- 40-track disk support

### V1.5
- Updated compression algorithm (~20% faster decompression)
- Multiple DirArt file formats (D64, BIN, PRG)

### V1.4
- Warning for multiple active drives on serial bus
- Updated GCR loop (284-311 rpm tolerance)

### V1.3
- Script embedding
- Demo looping feature
- Bundle alignment option
- Custom sector interleave

### V1.2
- Optional better packer

### V1.1
- Option to select ZP usage in the script

### V1.0
- Initial release
