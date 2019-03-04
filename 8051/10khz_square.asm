; #################################################################
; # Description: 
; # Assembly code for 8051 controller to create a square wave
; # at pin P1.0 with Frequency of 10KHz
; #################################################################

ORG 0000H			; Start Assembly at 0000H.
					; Main Start
MOV TMOD,#02H
MOV TH0,#0CEH
MOV TL0,#0CEH
SETB TR0
COUNT:CLR TF0
	JNB TF0,$
	CPL P1.0
	SJMP COUNT
RET
END					; End Assembly