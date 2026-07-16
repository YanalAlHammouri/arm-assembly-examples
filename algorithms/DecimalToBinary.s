.global _start
	
_start:
	@i did not really understand the question....i will assume that we have decimal number from 0 to 15 and we want to store each bit in a register
	MOV R0,#13 @this is the decimal number we want to convert to binary 
	MOV R1,#0 @will store least significant bit of the decimal number or the first bit  
	MOV R2,#0 @will store the second bit
	MOV R3,#0 @will store the third bit
	MOV R4,#0 @will store the most significant bit
	
	AND R1, R0,#1 @check if the LSB is 1 or zero and store the result in register R1
	LSR R0,#1 @logical shift right of the contents of R0
	AND R2, R0,#1 
	LSR R0,#1
	AND R3, R0,#1
	LSR R0,#1
	AND R4, R0,#1
	LSR R0,#1
_end:

	
	