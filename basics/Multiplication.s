.global _start

_start:
MOV R0,#0 @this will be our starting index at 0 that we will keep incrementing based on the multiplier
MOV R1,#4 @this is the number we want to multiply (multiplier)
MOV R2,#2 @this is the multiplicand
MOV R3,#0 @this will store the result so we have to initialize it as 0 in case it contains garbage value

_loop:
	CMP R0,R1 @see if R0==R1
	BEQ _end @branch to _end if R0 is equal to R1
	ADD R3, R3,R2 @if R0!=R1 then add the multiplicand to R3 which is initially empty
	ADD R0,R0,#1 @increment the counter (R0)
	B _loop @Jump back to the loop label (repeat the process)
	
_end:

	
	