		MACRO
		
$Lab11 SumAvg $Sum, $Avg, $p, $s, $arr
$Lab11
	LDR R0, $p
	LDR R1, $s
	MOV R3, #0
	MOV R4, #0
$Lab11.sum
	CMP R3, R1
	BEQ $Lab11.avg
	LDR R4, [R0], #4
	ADD R3, R3, #1
	ADD $Sum, $Sum, R4
	BNE $Lab11.sum
$Lab11.avg
	SDIV $Avg, $Sum, R3
	
	MEND
	
		AREA 	Lab_12_Adib_Baji, CODE, READONLY
		EXPORT	__main
Arr1			DCD 3, -7, 2, -3, 10
Arr1_size		DCD 5
Arr1_pointer 	DCD Arr1
    
Arr2         	DCD -8, -43, -3
Arr2_size     	DCD 3
Arr2_pointer 	DCD Arr2

Arr3         	DCD 9, 34, 2, 6, 2, 8, 2
Arr3_size     	DCD 7
Arr3_pointer 	DCD Arr3

__main

arrayOne SumAvg R5, R6, Arr1_pointer, Arr1_size, Arr1
arrayTwo SumAvg R7, R8, Arr2_pointer, Arr2_size, Arr2
arrayThree SumAvg R9, R10, Arr3_pointer, Arr3_size, Arr3

stop B stop
    END