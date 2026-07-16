.global _start
	
_start:
	MOV R0,#0 @the first element of the series
	MOV R1,#1 @the second element of the series 
	MOV R2,#0 @counter
	MOV R3,#4 @the Nth term we want to calculate
	MOV R4,#0 @will store the result (the nth term of the series)
	SUB R3,R3,#1 @because the series starts from 0 we have to take this into consideration
	
_loop:
	CMP R2,R3 @check the status of the counter
	BEQ _end @end program if we have reached the nth term
	ADD R4,R1,R0 @add current and previous elements to get the next element
	MOV R0,R1 @update both the current and the previous elements for the future element
	MOV R1,R4 
	ADD R2,R2,#1 @increment counter
	B _loop @loop
	
_end:

	
	