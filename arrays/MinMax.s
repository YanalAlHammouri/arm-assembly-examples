.global array

array:
	.word 5,2,6,7,8 @this is our array of 4 byte-sized elements
	
_start:
	MOV R0,#0
	MOV R1,#0
	MOV R2,#0
	MOV R3,#0 
	MOV R4,#0 @initializing all registers in case they have garbage data 
	LDR R0, =array @store address of the first element of the array in R0
	@i will use R2 for the minimum and R3 for the maximum while R4 will be used as current element in array...it will start from the second element
	LDR R2,[R0]
	LDR R3, [R0]
	MOV R1,#4 @size of the array -1
	ADD R0,R0,#4 @move to next element
	
_loop:
	CMP R1,#0 @see if we iterated over the entire array
	BEQ _end @exit loop
	LDR R4, [R0] @load the element being pointed at by R0 in R4
	CMP R4,R3 @is the element larger than the current max?
	BGT _max @branch to _max label if previous line is correct
	CMP R4,R2 @is current element less than the current min?
	BLT _min @branch to min label if previous line is correct
	
	ADD R0,R0,#4 @move R0 across the array
	SUB R1,R1,#1 @decrement R1
	B _loop @loop again
	
_max:
	MOV R3,R4 @update the current max
	ADD R0,R0,#4 @move R0 across the array
	SUB R1,R1,#1 @decrement R1
	B _loop @loop again
	
_min:
	MOV R2,R4 @update the current min
	ADD R0,R0,#4 @move R0 across the array
	SUB R1,R1,#1 @decrement R1
	B _loop @loop again
	
_end:

	
	