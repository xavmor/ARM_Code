.data



.text
.balign 4
.global main
main:
	mov r1, #0
	mov r2, #1
	//push {lr, r0}
	b loop
	//pop {lr, r0}

loop:
	cmp r2, #22
	bgt end		@ Branch to end ; if r2 > 22
	add r1, r1, r2
	add r2, r2, #1
	b loop

end:
	mov r0, r1
	bx lr

