.global _start
.global array

array:
	.word 5,2,6,1,7 @this will be our array
	
_start:
	LDR R0, =array @store address of first element of the array in register R0
	MOV R5,#4 @for outer loop because for bubble sort it can finish sorting in n-1 iterations of outerloop

_outerloop:
	CMP R5,#0 @check if outer loop has finished iterating
	BEQ _end @finish program
	MOV R1,#0 @will be used for current element
	MOV R2,#0 @will be used for next element
	MOV R4,#4 @for inner loop
	MOV R6,#0 @will be used to point at current element
	MOV R7,#4 @will be used to point at next element
	B _innerloop @enter inner loop

_innerloop:
	CMP R4,#0 @check if inner loop has finished iterating
	BEQ _nextout @jump to _nextout label
	LDR R1,[R0,R6] @load value of current element in register R1
	LDR R2,[R0,R7] @load value of next element in register R2
	CMP R1,R2 @compare the values in the two registers
	BGT _swap @if value in R1 is greater than value in R2 then jump to _swap label
	B _update @update registers
	
	
_swap:
	STR R2,[R0,R6] @store the value stored in R2 in the position R0 + R6 in the array
	STR R1,[R0,R7] @store the value stored in R1 in the position R0 + R7 in the array
	B _update @update registers
	
_update:
	ADD R6,R6,#4 @move current-element pointer
	ADD R7,R7,#4 @move next_element pointer
	SUB R4,R4,#1 @decrement innerloop counter
	B _innerloop @back to innerloop
	
_nextout:
	SUB R5,R5,#1 @decrement outerloop counter
	B _outerloop @back to outerloop
	
_end:@to view the contents of the array
	LDR R1,[R0] 
	ADD R0,R0,#4
	LDR R2,[R0]
	ADD R0,R0,#4
	LDR R3,[R0]
	ADD R0,R0,#4
	LDR R4,[R0]
	ADD R0,R0,#4
	LDR R5,[R0]
	
	
	