# Assembly-Star-Anim

## Overview

This project implements a simple screen animation using **16-bit x86 Assembly**.

A star (`*`) starts at the center of the screen and moves through different trajectories, exploring various movement patterns.

The animation uses BIOS video interrupts to control the cursor position and display characters on the screen.

## Features

- **Vertical movement** – The star moves up and down.
- **Horizontal movement** – The star moves left and right.
- **Diagonal movement** – The star travels in different diagonal directions.
- **Spiral-like movement** – The star follows a sequence of movements that creates a spiral pattern.
- **Screen positioning** – Uses BIOS interrupts to control the star's position.
- **Character animation** – The previous position is cleared before displaying the star at its new position.

## Technical Details

The project uses:

- 16-bit x86 Assembly
- BIOS Video Interrupt (`INT 10h`)
- CPU registers (`AX`, `BX`, `CX`, `DX`)
- Conditional jumps (`JG`, `JL`, `JNZ`)
- Arithmetic instructions (`INC`, `DEC`, `ADD`, `SUB`)
- Software delay loops using `LOOP`

### Video Interrupts

The animation relies mainly on BIOS video services:

| Function | Purpose |
|---|---|
| `INT 10h / AH=02h` | Set cursor position |
| `INT 10h / AH=09h` | Display a character with an attribute |

## Project Structure

```text
Star-Animation-Assembly/
│
├── mycode.asm
└── README.md
```

## Running the Project

The source code is written for a 16-bit x86 environment.

To run the project:
1. Open the assembly source file in a compatible assembler or emulator.
2. Assemble the code.
3. Execute the program in a DOS-compatible environment with BIOS video interrupt support.

## Purpose

This project was developed as a practical exercise to improve my understanding of Assembly programming, CPU registers, BIOS interrupts, conditional jumps and basic animation techniques.

## Author

Developed as a personal learning project.