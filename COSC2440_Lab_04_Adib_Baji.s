	AREA Lab_04_Adib_Baji, CODE, READONLY
	EXPORT __main
		
__main
	
	MOV	R1, #0
	MOV	R2, #0
	MOV R3, #0
	MOV R4, #0
	MOV R5, #0
	MOV R6, #0
	SUB R1, #6
	Sub R2, #18
	
	CMP R1, #0
	BLT R3ToAbs
	B stop
R3ToAbs
	RSB R3, R1, #0

	CMP R2, #0
	BLT R4ToAbs
	B stop
R4ToAbs
	RSB R4, R2, #0

	CMP R3, R4
	BLE R3LER4
	BGT R3GTR4
	B stop
R3LER4
	ADD R6, R6, R3
loop
	CMP R6, R4
	ADD R5, R5, #60
	ADD R5, R5, R3
	ADD R5, R5, R4
	SUB R5, R5, R6
	SUB R5, R5, R6
	ADDLE R6, R6, #1
	BLE loop
R3GTR4

stop B stop

	END