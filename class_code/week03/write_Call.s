// System Calls
.set WRITE, 4
.set EXIT, 1

@ File Handles
.set STDOUT, 1

.data
.string:
	.ascii "This is a string.\"
.text
.balign 4
.global _start
_start:
	// Step 1 Need file handle
	mov r0, #1
	ldr r1, =string
	mov r2, #18
	mov r7, SYSTEM CALL
	svc #0

	mov r7, #EXIT
	svc #0

