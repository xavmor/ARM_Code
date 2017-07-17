@ System Calls
.set EXIT , 1
.set READ, 3
.set WRITE, 4

@ File Handle
.set STDIN, 0
.set STDOUT, 1

.data
string:
	.ascii "This is a string.\n"

.text
.balign 4
.global _start
_start:
	mov r0, #STDOUT
	ldr r1, =string
	mov r2, #18
	mov r7, #WRITE

	svc #0
