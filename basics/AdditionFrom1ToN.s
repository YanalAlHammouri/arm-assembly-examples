.global _start

_start:
	MOV R0, #5 @this will be our N
	MOV R1, #0 @starting index
	MOV R2,#0 @this will hold the sum we initialize it in case it already stores garbage data
	
_loop:
	CMP R0,R1 @see if our index has reached N
	BEQ _end @exit loop
	ADD R1,R1,#1 @increment index
	ADD R2,R1,R2 @add index to R2
	B _loop @loopback

_end:
	
	