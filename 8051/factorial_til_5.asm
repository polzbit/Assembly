; #################################################################
; # Description: 
; # Assembly code for 8051 controller to calc factorial up to 5
; # Number is stored in R1 register
; # Factorial Result is stored in R7 register as HEX value
; #################################################################
ORG 0000H			; Start Assembly at 0000H.
					; Main Start
MOV R1,#04
MOV R7,#01
LCALL FACT
MOV R7,A
FACT:
MOV A,R7
CJNE R1,#00,LOOP
SJMP LOOP2
LOOP:
MOV B,R1
MUL AB
DJNZ R1,LOOP
LOOP2:
RET
END					; End Assembly