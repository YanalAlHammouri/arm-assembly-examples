.global _start

_start:
	MOV R0,#6 @we want to check if the number stored in R0 is even or odd
	@for this we will use the idea that the least significant bit is always a 0 for even numbers and a 1 for odd numbers
	@so we can AND the register with a 0x00000001 if the result is 1 the number is odd and if the result is 0 the number is even
	AND R1,R0,#1
	CMP R1,#1 @we compare if the result of the AND was 1
	BEQ _odd @we jump to the odd label if the result of the AND was 1
	MOV R2,#0 @we will use R2 to tell us if the number was odd or even....if R2 stores a 1 then the number is odd. If it stores a 0 then the number is even
	B _end
	
_odd:
	MOV R2,#1
	B _end

_end:
	
	