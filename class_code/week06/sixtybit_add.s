.arch armv7-a
.cpu cortex-a7

.data
format:
	.asciz "%lli\n" // One L tells it long two tells it 64 bit


.text
.global main
main:
	push {r4, lr}

	movw r0, #:lower16:0xFFFFFFFF
	movt r0, #:upper16:0xFFFFFFFF
	mov r1, #0

	movw r2, #1
	mov  r3, #0

	adds r2, r0, r2
	adc r3, r1, r3 // add with carry

	movw r0, #:lower16:format
	movt r0, #:upper16:format
	bl printf

	pop {r4, pc}
