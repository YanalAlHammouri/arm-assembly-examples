.global _start

_start:
	MOV R0, #5 @this will be our number we want to find factorial of so 5!
	MOV R1, #0 @we need this to compare with R0 to know when to stop decrementing R0
	MOV R2,#1 @this will hold the result of multiplication and at the end will have the factorial
	
_loop:
	CMP R0,R1 @see if we need to stop
	BEQ _end @exit loop if R0==0
	MUL R2,R2,R0 
	SUB R0,R0,#1 @decrement R0
	B _loop @loopback

_end:
	
	