	AREA Lab_03_Adib_Baji, CODE, READONLY
	EXPORT __main
		
__main

	MOV R0, #3
	MOV R1, #0
	MOV R2, #15
	
	CMP R0, #3
	BNE goToElse
	MOV R0, #10
	MOV R1, #20
	B goToCI
	
goToElse
	MOV R0,#20
	MOV R1, #10
	MOV R2, #5
	
goToCI
	CMP R2, #10
	MOVEQ R0, #1
	MOVEQ R1, #2
	MOVNE R0, #2
	MOVNE R1, #1
	
loop
	CMP R0, #10
	ADDLE R0, R0, #1
	BLE loop
	
loop2
	SUBS R0, R0, #1
	BGT loop2
	
loop3
	CMP R2, R1
	ADDLE R1, R1, #1
	BLE loop
	
stop B stop

	END