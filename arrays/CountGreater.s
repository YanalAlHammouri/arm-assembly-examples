.global array

array:
	.word 5,2,6,7,8 @this is our array of word-sized elements

_start:
	LDR R0, =array @R0 now contains address of first element in the array
	MOV R2, #5 @this is the size of our array
	MOV R3, #3 @this is the given value we will use to compare and see how many elements are larger than it
	MOV R4, #0 @this will count how many elements in the array are larger than the given value stored in R3
	
_loop:
	CMP R2,#0 
	BEQ _end
	LDR R1, [R0] @R1 now contains an element from the array
	CMP R1,R3
	BGT _greater
	ADD R0,R0,#4
	SUB R2,R2,#1
	B _loop
	
_greater:
	ADD R4,R4,#1
	ADD R0,R0,#4 @since the array stores word-sized elements, each element is 4 bytes and so the next element will be in address added 4 to it
	SUB R2,R2,#1 @decrement the counter 
	B _loop

_end:
	
	