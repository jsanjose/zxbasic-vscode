 10 REM This is a comment
 20 ' This, also, must be a comment
 21 'Another comment
 'Also a comment
 30 FOR i = 1 TO 10: PRINT AT i, i; "Hello: " + i;: NEXT i

 40 DATA 1, 2, 3, 4, 5, 6
 50 DIM a(6)
 60 RESTORE 40: FOR i = 1 TO 6: READ a(i): NEXT is

100 IF a(1) = 1 THEN GOTO 200
110 DEF FN f(n) = n AND n OR NOT n
120 LET test = FN f(10)
130 STOP

200 WHILE n < 10
210 PRINT AT 1, n; "While Loop"
230 END WHILE

300 DO
310 PRINT AT 1, n; "Do Loop"
320 LOOP WHILE n < 10

400 DO UNTIL n > 10
410 PRINT AT 1, n; "Until Loop"
420 LOOP