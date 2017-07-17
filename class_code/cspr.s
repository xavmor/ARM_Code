.set EXIT, 1

.text
.global _start
_start:
	mvn r0, #0 // This operand is no
	adds r0, r0, #1 // Sets condition register

	// The above will set two bits it will set the C and Z bit

	subs r0, r0, #1

	mov r7, #EXIT
	svc #0
