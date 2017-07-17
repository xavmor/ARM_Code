.set #EXIT, 1

.text
.global _start
_start:
	mov r1, r0, lsl #2
	mov r1, r0, lsl #2
	mov r1, r0, lsl #2

	mov r7, EXIT
	svc #0
