.data
string:
	.asciz "%lli\n" // Need lli to print 64 bit


.text
.global main
main:
	push {r0, lr}

	mvn r2, #0
	mov r3, #0

	adds r2, #1
	adc r3, #0

	ldr r0, =string 

	bl printf

	pop {r0, lr}
	bx lr
