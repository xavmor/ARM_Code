.arch armv7-a
.cpu cortex-a7

.set EXIT, 1

.data
division:
	.asciz "%u + %u = %u\n"

.text
.align 2
.global _start
_start:

	mov r1, #100
	mov r2, #5
	udiv r0, r1, r2
	//ldr r0, =division

	mov r7, #EXIT
	svc #0
