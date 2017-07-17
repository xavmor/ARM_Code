
.balign 4
.data
number:
	.space 4
.balign 4
.bss
number1:
	.word 400



.balign 4
.text
.global _start
_start:
/*	mov r0, #48
	mov r1, #49
	mov r2, #50
	ldr r8, =number
	strb r0, [r8, #0]
	strb r1, [r8, #1]
	strb r2, [r8, #2]

	ldr r8, =number1
	ldr r8, [r8]
	add r0, r8, #48
	ldr r8, =number1
	str r0, [r8]
	//ldr r8, =number1
	ldr r8, [r8]
	//cmp r0, r1*/

/*	ldr r0, =number
	ldr r0, [r0]
	add r0, r0, #300
	ldr r1, =number
	str r0, [r1]
	ldr r3, =number
	ldr r3, [r3]*/

	ldr r0, =number
	mov r1, #100
	str r1, [r0]
	ldr r0, =number
	ldrb r0, [r0, #1]


	mov r7, #1
	svc #0
