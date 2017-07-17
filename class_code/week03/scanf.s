.data
prompt:
	.asciz "> "
format:
	.asciz "%i"
result:
	.asciz "You typed %i\n"


.bss
.balign 4
int_buffer:
	.word 4



.text
.global main
main:
	push {r0, lr}

	ldr r0, =prompt
	bl printf

	ldr r0, =format
	ldr r1, =int_buffer
	bl scanf

	ldr r0, =result
	ldr r1, =int_buffer
	mov r1, [r1]
	bl printf

	pop {r0, lr}
	bx lr
