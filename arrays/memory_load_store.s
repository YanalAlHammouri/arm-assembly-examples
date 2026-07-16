.global array

array:
	.word 5,2,6,7,8 @this is our array of 4 byte-sized elements
	
_start:
	MOV R0,#0
	MOV R1,#0
	MOV R2,#0
	MOV R3,#3 
	MOV R4,#0 @initializing all registers in case they have garbage data 
	LDR R0, =array @store address of the first element of the array in R0
	LDR R1,[R0] @load element currently being pointed to by R0 
	MUL R1,R1,R3 @multiply element by 3
	STR R1,[R0] @store the updated element in its initial position
	
	
_end:

	
	