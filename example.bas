#include once <screen.bas>
#include <scroll.bas>

#require "attr.asm"

#ifndef __examplebas__
#define __examplebas__

#incbin "data.bin"

#endif

#pragma push(case_insensitive)
#pragma case_insensitive = TRUE
#pragma pop(case_insensitive)

 10 REM This is a comment
 20 ' This, also, must be a comment
 21 'Another comment
 'Also a comment

 /' And a block comment 
     of several lines
 '/

 DIM a AS uByte 
 DIM b AS String

 30 FOR i = 1 TO 10: PRINT AT i, i; "Hello: " + i;: NEXT i

 40 DATA 1, 2, 3, 4, 5, 6
 50 DIM a(6)
 60 RESTORE 40: FOR i = 1 TO 6: READ a(i): NEXT i

100 IF a(1) = 1 THEN GOTO 200: END IF
110 DEF FN f(n) = n AND n OR NOT n
120 LET test_me = FN f(10)
130 STOP

Function myfunc(ByVal a as uInteger) as Byte
    RETURN a * 2
End Function

c = CHR$(5)

IF a AND c THEN GOTO 100
END IF

200 WHILE n < 10
210 PRINT AT 1, n; "While Loop"
230 END WHILE

300 DO
310 PRINT AT 1, n; "Do Loop"
320 LOOP WHILE n < 10 AND a > 10

400 DO UNTIL n > 10
410 PRINT AT 1, n; "Until Loop"
420 LOOP

Sub DoSomething(y as uByte, x as uByte)
    POKE @coordsaddr,x
    POKE @coordsaddr + 1, y
End Sub

testlabel:
    Print64("This is a test label")
    GO TO testlabel ' GO TO and GOTO are both valid

' Escaped chars
LET a$ = "Block graphics: \.'\:.\::"
LET b$ = "This is a \\ backslash"
LET c$ = "This is \` the pound sterling symbol"
LET d$ = "Copyright \*2022 JSJ"
LET e$ = "The character \#065 is A"
LET f$ = "\{p0}Paper 0, \{i7}Inke 7, \{b1}Bright 1, \{f0}Flash 0"

' DIMs
DIM x, y AS uInteger
DIM a(1 TO 10) AS uByte
DIM UDGaddr AS uInteger AT 23675
DIM UDG(7) AS uByte => {0, 1, 3, 7, 15, 31, 63, 127}
DIM UDGS(1, 7) AS uByte => {{0, 1, 3, 7, 15, 31, 63, 127}, _
                            {1, 2, 4, 7, 15, 31, 63, 127}}

' DATA
DATA 2, a * a, "Hello"
DATA b * 5, 32, "World"

' New Spectrum NEXT BASIC commands

1000 LOAD f$ BANK n
1010 LOAD f$ LAYER
1020 BANK n POKE offset, value
1030 BANK n ERASE
1040 BANK n LAYER x, y, w, h TO ~ offset
1050 PALETTE DIM n
1060 SPRITE BANK n
1070 SPRITE PALETTE n
1080 SPRITE PALETTE n BANK b, offset
1090 LAYER 0
1100 LAYER 1, 1
1110 LAYER PALETTE n
1120 LAYER AT x, y
1130 LAYER OVER n
1140 LAYER BANK n, m
1150 LAYER ERASE x, y, w, h
1160 TILE BANK n
1170 TILE DIM n, offset, w, tilesize
1180 TILE AT x, y
1190 TILE w, h AT x, y TO x2, y2
1200 BANK n LINE x, y
1210 BANK n LIST
1220 BANK n GOTO l
1230 ERASE first, last


' Embedded assembler

ASM
START:    
    ld a, 5
    ld hl, 16384
    ld (hl), a
    ret
END ASM