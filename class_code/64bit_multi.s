.arch armv7-a
.cpu cortex-a7

.data
format:
	//.asciz "0x%lli\n" // integer number
	.asciz "0x%llx\n" // hex number
.text
.global main
main:
	push {r4-r8, lr}
	movw r0, #:lower16:0x10000000
	movt r0, #:upper16:0x10000000

	movw r1, #:lower16:0x00100000
	movt r1, #:upper16:0x00100000

	mov r2, #0x4
	mov r3, #0x0

	umull r4, r5, r0, r2
	mul r6, r1, r2
	mul r7, r0, r3
	add r5, r5, r6
	add r5, r5, r7

	mov r2, r4
	mov r3, r5

	movw r0, #:lower16:format
	movt r0, #:upper16:format

	bl printf

	bx lr
