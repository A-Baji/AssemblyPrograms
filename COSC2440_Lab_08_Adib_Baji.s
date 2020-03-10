	AREA	Lab_08_Adib_Baji, CODE, READONLY
	EXPORT	__main
__main
	LDR	R0,	=0x7E0C0A2B ;This is how you assign large value to R0. MOV will NOT work!
	MOV R1, #0 			;Initialize R1
	MOV R2, #0 			;Initialize R2

loop
	CLZ R2, R0 		;Count leading zeros
	LSL R0, R0, #1 	;Shift left by 1
	
	CMP R2, #0 	;If 0
	BEQ incr 	;then branch to incr
	CMP R2, #32 ;If not 32
	BNE loop 	;then branch to loop
	CMP R2, #32	;If 32
	BEQ stop	;then branch to stop

incr
	ADD R1, #1	;Increment by 1
	B loop

stop B stop
	END