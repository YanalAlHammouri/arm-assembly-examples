.global array

array:
	.word 5,2,6,7,8 @this is our array of 4 byte-sized elements
	
_start:
	MOV R0,#0
	MOV R1,#0
	MOV R2,#0
	MOV R3,#0 @initializing all registers in case they have garbage data 
	LDR R0, =array @store address of the first element of the array in R0
	MOV R1, #5 @store size of the array
	MOV R2,#0 @will store the sum of all the elements in the array
	
_loop:
	CMP R1,#0
	BEQ _end
	LDR R3,[R0] @will hold the array element being pointed at by R0
	ADD R2,R2,R3
	ADD R0,R0,#4 @move R0 to make it point to the next element....we increment by 4 because the next element will be at current address + 4
	SUB R1,R1,#1
	B _loop
	
_end:
	
	