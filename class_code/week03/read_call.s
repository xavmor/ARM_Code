@ system Cals
.set EXIT, 1
.set READ, 3
.set WRITE, 4

@ File Handle
.set STDIN, 0
.set STDOUT, 1


.data
prompt:
	.ascii ">"
.set prompt_len, .-prompt

.bss // This is memory space when the system starts up but its currently empty
.balign 4
buffer:
	.space 32
.text
.global _start
_start:
	mov r0, #STDOUT
	ldr r1, =prompt
	mov r2, #prompt_len
	mov r7, #WRITE
	svc #0

	mov r0, #STDIN
	ldr r1, =buffer
	mov r2, #32
	mov r7, #READ
	svc #0

	mov r2, r0 // This gives us the length
	mov r0, #STDOUT
	ldr r1, =buffer
	mov r7, #WRITE
	svc #0

	mov r7, #EXIT
	svc #0
