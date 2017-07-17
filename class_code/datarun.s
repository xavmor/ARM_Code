.set EXIT, 1

.data
struct:
	.word 12
	add r0, r0, #12
	bx lr

.text
.global _start
_start:
	mov r0, #15
	ldr r1, =struct
	add r1, r1, #4
	blx r1

	mov r7, #EXIT
	svc #0
