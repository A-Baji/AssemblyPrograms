	AREA	Lab_10_Adib_Baji, CODE, READONLY
	EXPORT	__main
__main
	LDR	R0,	=0x2345ABCD ;This is how you assign large value to R0. MOV will NOT work!
	MOV R1, #0 			

loop
	LSRS R0, R0, #1
	ADC R1, #0
	BNE loop 	
	BEQ stop	

stop B stop
	END