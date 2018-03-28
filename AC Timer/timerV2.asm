
_main:

	MOVLW       1
	MOVWF       TRISB+0 
	CLRF        TRISD+0 
	CLRF        ANSELB+0 
	CLRF        ANSELD+0 
	CLRF        LATD+0 
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
	MOVLW       176
	MOVWF       LATD+0 
	MOVLW       203
	MOVWF       R11, 0
	MOVLW       236
	MOVWF       R12, 0
	MOVLW       132
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	CLRF        LATD+0 
	GOTO        L_main6
L_main4:
	MOVLW       144
	MOVWF       LATD+0 
	MOVLW       41
	MOVWF       R11, 0
	MOVLW       150
	MOVWF       R12, 0
	MOVLW       127
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
	CLRF        LATD+0 
L_main6:
	GOTO        L_main8
L_main2:
	BTFSS       PORTB+0, 1 
	GOTO        L_main9
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
	NOP
L_main11:
	MOVLW       192
	MOVWF       LATD+0 
	BTFSS       PORTB+0, 2 
	GOTO        L_main13
	CLRF        LATD+0 
	GOTO        L_main12
L_main13:
	BTFSS       PORTB+0, 3 
	GOTO        L_main15
	GOTO        ___main_timer
L_main15:
	GOTO        L_main11
L_main12:
	GOTO        L_main16
L_main9:
	BTFSS       PORTB+0, 2 
	GOTO        L_main17
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main18:
	DECFSZ      R13, 1, 1
	BRA         L_main18
	DECFSZ      R12, 1, 1
	BRA         L_main18
	DECFSZ      R11, 1, 1
	BRA         L_main18
	NOP
	NOP
	CLRF        LATD+0 
L_main17:
L_main16:
L_main8:
	GOTO        L_main0
L_end_main:
	GOTO        $+0
; end of _main
