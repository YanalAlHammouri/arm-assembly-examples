.global _start

_start:
	MOV R0,#9 @our first number
	MOV R1,#4 @our second number
	MOV R2, #0 @this will hold the max of the two
	CMP R0,R1 @this will do R0-R1
	BGT _greater @checks if result is positive which means R0>R1 and so jump to _greater label
	BLT _less @checks if result is negative which means R0<R1 and so jump to _less label
	BEQ _equal @checks if result is 0 which means R0==R1 and so jump to _equal label
	
_greater:
	MOV R2,R0 @move the value of R0 to register R2 which holds the max
	B _end @jump to end so that it skips the other labels
	
_less:
	MOV R2,R1 @move the value of R1 to register R2 which holds the max
	B _end
	
_equal:
	MOV R2,R1 @move any of the two registers to register R2 since the max of the same number is the number itself
	B _end

_end:
	
	