		AREA	|.text|, CODE, READONLY, ALIGN=2
		THUMB
		EXPORT Start
			
Start
;----------------Constantes------------------
	VLDR.F32 S1,=0.4330; (1/2)sen60 
	VLDR.F32 S2,=1.7205; (5/4)tan54
	VLDR.F32 S3,=4.8284; (2)tan67.5
;------------Elección de la figura geometrica-------------------------------------
	LDR	R1,=3; Registro con el cual se elije la figura 1-Triangulo, 2-Pentagono, 3-Octagono
;------------Ingreso del tamaño del lado de la figura geometrica-----------------
	VLDR.F32 S0,=12.61; Longitud del lado de la figura geometrica 
;------------------------------------------------------------
	CMP	R1,#1
	BEQ	Triangulo 
	
	CMP	R1,#2
	BEQ	Pentagono
	
	CMP	R1,#3
	BEQ	Octagono 
	
	B	Start
Triangulo
	VMUL.F32 S4,S0,S0
	VMUL.F32 S5,S4,S1
	B	Start
	
Pentagono	
	VMUL.F32 S4,S0,S0
	VMUL.F32 S5,S4,S2
	B Start
	
Octagono
	VMUL.F32 S4,S0,S0
	VMUL.F32 S5,S4,S3
	B Start 
Loop
	
	B	Loop

	ALIGN
	END