# ZX-Basic README

Sinclair ZX Spectrum BASIC syntax highlighting for Visual Studio Code.

Supports all reserved words from the Sinclair ZX Spectrum BASIC.

## Standard ZX-Basic

### Statements

```text
BEEP, BIN, BORDER, BRIGHT, CAT, CIRCLE, CLEAR, CLOSE#, CLS,
CONTINUE, COPY, DATA, DEF FN, DIM, DRAW, ERASE, FLASH, FORMAT,
FOR, GO SUB, GO TO, IF, INK, INPUT, INVERSE, LET, LIST, LLIST,
LOAD, LPRINT, MERGE, MOVE, NEW, NEXT, OPEN#, OUT, OVER, PAPER,
PAUSE, PLOT, POKE, PRINT, RANDOMIZE, READ, RESTORE, RETURN,
RUN, SAVE, VERIFY
```

### Functions

```text
ABS, ACS, ASN, ATN, ATTR, CHR$, CODE, COS, EXP, FN, INKEY$, INT,
IN, LEN, LN, PEEK, PI, POINT, RND, SCREEN$, SGN, SIN, SQR, STR$,
TAN, USR, VAL$, VAL
```

### Operators

```text
AND, NOT, OR
```

### Other reserved words

```text
AT, LINE, STEP, TAB, THEN, TO, STOP
```

## Spectrum Next BASIC

### Statements

```text
BANK, LAYER, PALETTE, SPRITE, TILE, REMOUNT, PWD, CD, MKDIR, RMDIR
```

## Boriel's ZX Basic Compiler

This extension supports also Boriel's ZX Basic Compiler extended syntax.

### Statements

```text
DO, ELSE, ELSEIF, END, ENDIF, EXIT, FUNCTION, GOTO, GOSUB, LOOP, UNTIL, WEND, WHILE
```

### Functions

```text
ASC, CAST, CHR, CSRLIN, HEX, HEX16, GetKey, MultiKeys, GetKeyScanCode,
LBOUND, LCase, STR, POS, SCREEN, UCase, Print42, PrintAt42, Print64, PrintAt64
```

### Operators

```text
bAND, bNOT, bOR, bXOR, MOD, SHL, <<, SHR, >>, XOR
```

### Data types

```text
Byte, Ubyte, Integer, Uinteger, Long, Ulong, String, Fixed, Float
```

### Special

```text
ASM, ALIGN
```

### Other reserved words

```text
AS, BOLD, ByRef, ByVal, CONST, DECLARE, FastCall, ITALIC, StdCall, SUB
```

## Directives

```text
#DEFINE, #IFDEF, #IFNDEF, #ENDIF, #INCLUDE, #INCBIN, #PRAGMA, #REQUIRE, #IF, #ELSE, #ELIF, #UNDEF, #INIT, #LINE, #ERROR, #WARNING
```

## Installation

Launch VS Code Quick Open (**Ctrl+P**), paste the following commnand, and press Enter.

```vscode
ext install zxbasic
```

## Acknowledgments

- To ***boriel*** for his contributions.
