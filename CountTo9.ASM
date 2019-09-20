ORG 90

	DB A
	DB B6
	DB 9E
	DB 4E
	DB DC
	DB 7C
	DB 8A
	DB FE
	DB CE

ORG 00

MOV CL, 90
MOV BL, 09


START:
	

	MOV AL, [CL]
	
	OUT 02

	INC CL
	DEC BL
	
	CMP BL, 00
	JNZ START
	JZ FINISH


FINISH:

	END

