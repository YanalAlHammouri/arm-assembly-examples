.global _start
	
_start:
	MOV R0,#4 @our first number
	MOV R1,#6 @our second number
	
	BL _max @jump to our function "_max" it will automatically take R0 and R1 as parameters and store the address of the next instruction (B _end) in register LR then return R0 as result
	B _end @finish program
	
_max:
	CMP R0, R1 @compare between the contents of the two registers
	BGT _greater @branch if R0 is greater than R1
	MOV R0,R1 @make R0=R1 since R0 is the return register
	BX LR @jump back to the address of the instruction stored in register LR
	
_greater:
	BX LR @jump back to the address of the instruction stored in register LR 
	
_end:

	
	