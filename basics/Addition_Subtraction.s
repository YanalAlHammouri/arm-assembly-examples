.global _start
_start:
	MOV R0,#5 @here we put the number 5 in register R0
	MOV R1,#4 @here we put the number 4 in register R1
	
	ADD R2,R1,R0 @here we add R0 with R1 and store the result in register R2
	SUB R3, R0,R1 @here we subtract R1 from R0 and store the result in register R3
