
_main:

	MOVLW       1
	MOVWF       TRISB+0 
	CLRF        TRISD+0 
	CLRF        ANSELB+0 
	MOVLW       128
	MOVWF       LATD+0 
L_main0:
	BTFSS       PORTB+0, 3 
	GOTO        L_main2
___main_timer:
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	BTFSS       PORTB+0, 3 
	GOTO        L_main4
	MOVLW       48
	MOVWF       LATD+0 
	MOVLW       0
	MOVWF       R10, 0
	MOVLW       0
	MOVWF       R11, 0
	MOVLW       0
	MOVWF       R12, 0
	MOVLW       0
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	DECFSZ      R10, 1, 1
	BRA         L_main5
	MOVLW       173
	MOVWF       R10, 0
	MOVLW       9
	MOVWF       R11, 0
	MOVLW       207
	MOVWF       R12, 0
	MOVLW       77
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	DECFSZ      R10, 1, 1
	BRA         L_main6
	NOP
	MOVLW       128
	MOVWF       LATD+0 
	GOTO        L_main7
L_main4:
	MOVLW       16
	MOVWF       LATD+0 
	MOVLW       0
	MOVWF       R10, 0
	MOVLW       0
	MOVWF       R11, 0
	MOVLW       0
	MOVWF       R12, 0
	MOVLW       0
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	DECFSZ      R10, 1, 1
	BRA         L_main8
	MOVLW       30
	MOVWF       R10, 0
	MOVLW       92
	MOVWF       R11, 0
	MOVLW       53
	MOVWF       R12, 0
	MOVLW       49
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
	DECFSZ      R10, 1, 1
	BRA         L_main9
	NOP
	MOVLW       128
	MOVWF       LATD+0 
L_main7:
	GOTO        L_main10
L_main2:
	BTFSS       PORTB+0, 1 
	GOTO        L_main11
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
	NOP
	NOP
L_main13:
	MOVLW       64
	MOVWF       LATD+0 
	BTFSS       PORTB+0, 2 
	GOTO        L_main15
	MOVLW       128
	MOVWF       LATD+0 
	GOTO        L_main14
L_main15:
	BTFSS       PORTB+0, 3 
	GOTO        L_main17
	GOTO        ___main_timer
L_main17:
	GOTO        L_main13
L_main14:
	GOTO        L_main18
L_main11:
	BTFSS       PORTB+0, 2 
	GOTO        L_main19
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main20:
	DECFSZ      R13, 1, 1
	BRA         L_main20
	DECFSZ      R12, 1, 1
	BRA         L_main20
	DECFSZ      R11, 1, 1
	BRA         L_main20
	NOP
	NOP
	MOVLW       128
	MOVWF       LATD+0 
L_main19:
L_main18:
L_main10:
	GOTO        L_main0
L_end_main:
	GOTO        $+0
; end of _main
