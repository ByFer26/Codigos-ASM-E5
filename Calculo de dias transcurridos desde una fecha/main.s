		AREA	|.text|, CODE, READONLY, ALIGN=2
		THUMB
		EXPORT Start
			
Start
;------------------Constantes----------------
	LDR R0,=18
	LDR	R1,=10
	LDR	R2,=2022
	LDR	R3,=365
	LDR	R4,=31
;-----------Ingreso de Datos---------------
	LDR	R5,=29; Dia
	LDR	R6,=05; Mes
	LDR	R7,=1453; Año 
;-------Calculo de los años-------------
	SUB	R8,R2,R7
	MUL	R8,R8,R3
;-----------Calculo de los dias------------
	SUB	R9,R1,R6
	
	CMP	R9,#9
	BEQ	enero
	
	CMP	R9,#8
	BEQ	febrero
	
	CMP	R9,#7
	BEQ	marzo
	
	CMP	R9,#6
	BEQ	abril
	
	CMP	R9,#5
	BEQ	mayo
	
	CMP	R9,#4
	BEQ	junio
	
	CMP	R9,#3
	BEQ	julio
	
	CMP	R9,#2
	BEQ.W	agosto
	
	CMP	R9,#1
	BEQ.W	septiembre
	
	CMP	R9,#0
	BEQ.W	octubre
	
	CMP	R9,#0XFFFFFFFF
	BEQ.W	noviembre
	
	CMP	R9,#0xFFFFFFFE
	BEQ.W	diciembre
	
	
	B	Start
	
enero
	LDR	R9,=0
	LDR	R10,=2
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
febrero
	LDR	R9,=0
	LDR	R10,=3
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
marzo
	LDR	R9,=0
	LDR	R10,=4
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
abril
	LDR	R9,=0
	LDR	R10,=5
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
mayo
	LDR	R9,=0
	LDR	R10,=6
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
junio
	LDR	R9,=0
	LDR	R10,=7
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
julio
	LDR	R9,=0
	LDR	R10,=8
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
agosto
	LDR	R9,=0
	LDR	R10,=9
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
septiembre
	LDR	R9,=0
	LDR	R10,=10
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
octubre
	LDR	R9,=0
	LDR	R10,=11
	SUB	R9,R4,R5
	ADD	R9,R9,R0
	SUB	R11,R1,R10
	MUL	R11,R11,R4
	ADD	R9,R9,R11
	ADD	R12,R9,R8
	LDR	R9,=12
	B	Start
	
noviembre
	LDR	R9,=0
	SUB	R9,R4,R0
	ADD	R9,R9,R5
	SUB	R12,R8,R9
	LDR	R9,=12
	B	Start 
	
diciembre
	LDR	R9,=0
	SUB	R9,R4,R0
	ADD	R9,R9,R4
	ADD	R9,R9,R5
	SUB	R12,R8,R9
	LDR	R9,=12
	B	Start
	
	
Loop
	B Loop
			
	ALIGN
	END