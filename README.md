# Design Exercises Documentation

## Overview
This repository contains documentation for two design exercises completed for the CSARCH1 course. The exercises involve designing digital circuits to solve specific problems: a BCD to 7-segment decoder using a custom (2,1,2,6) code and a traditional Chinese dice game called BoBing.

---

## Design Exercise #1: BCD to 7-Segment Decoder

### Specification
- **Input**: A 4-bit binary code (W, X, Y, Z) following the (2,1,2,6) weighting system.
- **Output**: A 7-segment display (A, B, C, D, E, F, G) representing the decimal digits 0-9.
- **Special Cases**:
  - Some numbers (2, 3, 9) can be represented in two different ways due to the (2,1,2,6) code.
  - Inputs beyond 9 (e.g., 10, 11) are marked as "Don’t Care."

### Key Components
1. **Truth Table**: Maps each 4-bit input to the corresponding 7-segment output.
2. **Karnaugh Maps (K-Maps)**: Used to derive the Sum of Products (SOP) equations for each segment (A-G).
3. **Logic Circuit**: Implemented in CircuitVerse using logic gates based on the SOP equations.
4. **Verilog Test Bench**: Validates the circuit's functionality against expected outputs.

### Equations (SOP)
- **Output A**: `F = W'X' + W'Z + WY' + XYZ'`
- **Output B**: `F = X'Z' + W'Y + W'X' + WY'`
- **Output C**: `F = XZ' + Y'Z + W'Z + W'Y' + WYZ'`
- **Output D**: `F = W'X' + W'Y' + WY' + XYZ'`
- **Output E**: `F = W'X' + X'Y'`
- **Output F**: `F = W'X'Y' + W'YZ' + WX'Z + WYZ'`
- **Output G**: `F = W'Y' + YZ' + WY' + W'X'Z`

---

## Design Exercise #2: BoBing Dice Game

### Specification
- **Input**: Six 3-bit binary inputs (D1-D6), each representing a dice roll (values 1-6; 000 and 111 are invalid).
- **Output**: Six prize indicators (P1-P6), where only one LED lights up for a valid prize. All LEDs light up if any dice is invalid.
- **Prizes**:
  - **1st Prize**: Any 4 of the number 4, or 5 of any number.
  - **2nd Prize**: All numbers 1-6, or 3 of one number and 3 of another.
  - **3rd Prize**: 3 of the number 4 and 3 of any other number.
  - **4th Prize**: 4 of the same number (except 4).
  - **5th Prize**: 2 of the number 4 and 4 of any number.
  - **6th Prize**: 1 of the number 4 and 5 of any number.

### Key Components
1. **Truth Table**: Maps 3-bit inputs to dice values (1-6; invalid for 000 and 111).
2. **Decoders**: Convert 3-bit binary inputs to decimal values (1-6).
3. **High Counters**: Count occurrences of each dice value.
4. **Prize Condition Subcircuits**: Check if the dice rolls meet the prize requirements.
5. **Circuit Implementation**: Uses logic gates, multiplexers, and decoders to determine the prize.

### Circuit Elements
- **Inputs**: 38
- **Logic Gates**: OR (8), AND (3), NOT (2), NOR (1), XNOR (1)
- **Decoders**: 7
- **Subcircuits**: 12 (for prize conditions and counters)

---

## Repository Structure
- `DE1_S14_G3_Documentation.pdf`: BCD to 7-segment decoder documentation.
- `DE2_S14_G3_Documentation.pdf`: BoBing dice game documentation.
- `README.md`: This file, summarizing both exercises.

## Contributors
- Yazan Homssi
- Aebrahm Ramos

Submitted to: Prof. Carlo Adriano (CSARCH1).