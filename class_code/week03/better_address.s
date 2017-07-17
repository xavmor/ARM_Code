.data
.balign
variable:
	.word 64
.text
.balign 4
.global _start
_start:
	movw r4, #:lower16:variable
	movt r4, #:upper16:variable
	ldr r0, [r4]

	mov r7, #1
	svc #0
