	MACRO
$Lab08 Count1s_Lab08 $x, $y, $z
	MOV $x, #0
	
$Lab08.loop
	CMP $z, #0
	BEQ $Lab08.goback
	CLZ $y, $z
	ADD $y, #1
	ADD $x, #1
	LSL $z, $y
	BNE $Lab08.loop
	
$Lab08.goback
	MEXIT
	MEND
	
	MACRO
$Lab10 Count1s_Lab10 $i, $j
	MOV $i, #0
	
$Lab10.looptwo
	LSRS $j, #1
	ADC $i, #0
	BNE $Lab10.looptwo
	MEND
	
		AREA Lab_11_Adib_Baji, CODE, READONLY
		EXPORT __main
__main
							LDR R1, =0x2345ABCD
							LDR R2, =0x2345ABCD
Case_1_Lab_08 Count1s_Lab08 R4, R3, R1
Case_1_Lab_10 Count1s_Lab10 R5, R2

							LDR R1, =0x0
							LDR R2, =0x0
Case_2_Lab_08 Count1s_Lab08 R6, R3, R1
Case_2_Lab_10 Count1s_Lab10 R7, R2

							LDR R1, =0xFFFFFFFF
							LDR R2, =0xFFFFFFFF
Case_3_Lab_08 Count1s_Lab08 R8, R3, R1
Case_3_Lab_10 Count1s_Lab10 R9, R2

stop B stop

END