// Loops Here
.text
.global _start
_start:
	mov r0, #13
	b .Lloop_test
	//cmp r0, #0
	//beq Lloop_stop
Lloop_start:
	
Lloop_test:
	subs r0, r0, #1
	bne .Lloop_start // bne checks the zero bit, if zero it follows through

	mov r7, #EXIT
	svc #0
