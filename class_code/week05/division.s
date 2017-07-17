.set EXIT, 1
.text


.balign 4
.global _start
_start:
	mov r0, #10
	mov r1, #10
	mov r2, #10
	udiv r0, r1, r2
	
	mov r7, #EXIT
	svc #0
