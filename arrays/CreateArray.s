.global array

array:
	.word 5,2,6,7,8 @this is our array of 4 byte-sized elements
	
_start:
	MOV R0,#0
	MOV R1,#0
	MOV R2,#0
	MOV R3,#0
	MOV R4,#0
	LDR R0, =array @store address of the first element of the array in R0
	LDR R1, [R0] @store the element pointed at by R0 in R1
	ADD R0,R0,#4 @we want to take next element of the array
	LDR R2,[R0]

_end:
	
	