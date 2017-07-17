.data
string:
	.asciz "8 bit uncast value: %d, 8 bit value cast to 32 bits:%d\n"

.text
.global main
main:
	push {r12, lr}

	mov r1, #150
	//uxtb r2, r1
	sxtb r2, r1
	and r2, r1

	ldr r0, =string
	bl printf

	pop {r12, lr}
	bx lr
