.text

.global main
main:
	mov r0, #1
	b go_there

go_there:
	mov r1, r0
	push{r0, lr}
	b some_function
	pop {r3, lr}
	//mov r3, r0
	//bl some_function
	//add r0, r0, r1
	//bx lr

some_function:
	mov r0, #2
