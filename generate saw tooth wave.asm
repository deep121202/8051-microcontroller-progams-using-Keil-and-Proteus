ORG 0000h
BACK: MOV A, #00h
 UP: MOV P2, A
    	ACALL DELAY
	INC A
	CJNE A, #0FFH, UP
	SJMP BACK
	 
DELAY:
	 MOV R0, #255
HERE1: MOV R1, #255
HERE: DJNZ R1, HERE
	 DJNZ R0, HERE1
	 RET