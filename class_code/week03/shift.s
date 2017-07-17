.set EXIT, 1

.text
//.align 4 // This does bytes
.balign 4
.global _start
_start:
	mov r0, #8745983745024570

	mov r7, EXIT
	svc #0
