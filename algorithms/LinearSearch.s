.global _start
.global array

array:
	.word 4,2,5,6,8
	
_start:
	LDR R0,=array @store address of first element of our array in R0
	MOV R1,#5 @size of our array
	MOV R2,#6 @the value we want to search for in the array
	MOV R3,#0 @will store the result: 0 means element was not found, 1 means element was found
	
_loop:
	CMP R1,#0 @check if we iterated through the entire array
	BEQ _end @end program if we iterated through the entire array
	LDR R4, [R0] @store the element being pointed at by R0 in R4
	CMP R4,R2 @check the element we extracted with the element we are searching for
	BEQ _equal @jump to equal label if the contents of both registers are equal
	ADD R0,R0,#4 @increment R0 to point to the next element in the array
	SUB R1,R1,#1 @decrement R1
	B _loop @loop
	
_equal:
	MOV R3,#1 @set R3 to 1 indicating that the element was found in the array
	B _end
_end:

	
	