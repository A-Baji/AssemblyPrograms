		AREA	Lab_05_Adib_Baji,	CODE,	READONLY
		EXPORT	__main
__main
		MOV	R0,	SP
		MOV	R1,	#1
		MOV	R2,	#16
		MOV	R3,	#0
		
storeValuesLoop
		STR R1, [R0], #4
		ADD	R1,	#1
		CMP R1,	R2
		BLE	storeValuesLoop
		
		MOV	R1,	#8
		MOV R0, SP
		ADD R0, #28
		
readValuesLoop
		LDR R4, [R0], #4
		ADD	R3,	R4
		ADD	R1,	#1
		CMP	R1,	R2
		BLE	readValuesLoop
		
stop B stop
		END