.data 
addition:
	.asciz "%u + %u = %u\n"
subtraction:
	.asciz "%u - %u = %u\n"

.text
.global main
main:
	push {r12, lr}

	mov r1, #1000
	mov r2, #500
	uadd16 r3, r1, r2 // This stand for <prefix>add16 rd, rn, rm
	ldr r0, =addition // What does this do?
	bl printf

	pop {r12, lr}
	bx lr
