.global _start
.global array

array:
	.word 4,2,5,6,8
	
_start:
	LDR R0,=array @store address of first element of our array in R0
	MOV R1, #5 @length of our array
	MOV R2, #0 @wil carry the current element of the array pointed at by R0
	MOV R3, #0 @will carry the sum of elements of the array
	
	BL _sum @branch to function _sum while saving address of next instruciton in LR
	B _end @finish program
	
_sum:
	CMP R1,#0 @see if we have iterated over all the elements of the array
	BEQ _return @jump to label _return
	LDR R2,[R0] @load element being pointed at by R0 into register R2
	ADD R3,R3,R2 @add R2 to R3
	ADD R0,R0,#4 @increment R0 so that it points to the next element in the array
	SUB R1,R1,#1 @decrement R1
	B _sum @loop
	
_return:
	MOV R0,R3 @move the result to register R0 since functions usually return results in register R0
	BX LR @return to the address of the next instruction stored in register LR
	
_end:

	
	