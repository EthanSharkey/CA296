ORG A0

DB 9
DB 1
DB 2
DB 3
DB 3
DB 5
DB 6
DB 7
DB 8
DB 7
DB FF

ORG 00

MOV AL, A0


CALL 10
HALT

ORG 10

check_smaller:
	
	MOV BL, [AL]
	INC AL
	MOV CL, [AL]

	CMP CL, FF
	JZ loop_again

	CMP CL, BL
	JS movenumber
	JMP check_smaller


movenumber:

	DEC AL
	MOV [AL], CL
	
	INC AL
	MOV [AL], BL
	
	INC DL

	JMP check_smaller

loop_again:

	MOV AL, A0

	CMP DL, 00
	JZ finish

	MOV DL, 00
	JMP check_smaller

finish:

	RET
	END