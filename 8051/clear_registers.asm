ORG 0000H
MOV R0,#8
MOV R1,#8
LOOP:
MOV @R0,#0000
INC R0
DJNZ R1,LOOP
END