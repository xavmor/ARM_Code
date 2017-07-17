.arch armv7-a
.cpu cortex-a7

.data
subtraction:
	.asciz "%u - %u = %u\n"

.text
.global main
main:
	push {r12, lr}

	mov r4, #1000
	movt r4, #1200
	mov r5, #500
	movt r5, #600
	usub16 r6, r4, r5

	uxth r1, r4
	uxth r2, r5
	uxth r3, r6
	//ldr r0, =subtraction
	//bl printf

	mov r1, r4, LSR #16
	mov r2, r5, LSR #16
	mov r3, r6, LSR #16
	ldr r0, =subtraction
	bl printf

	pop {r12, lr}
	bx lr
