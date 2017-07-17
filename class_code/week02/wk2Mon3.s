// Functions

.set EXIT, 1


.text
.global _start
_start:
	mov r0, #13

	push {r1, lr}

	bl function

	bl function

	mov r7, #EXIT
	svc #0

function:
	push {r0, lr} // These are doing Memory Access try to avoid if you can

	add r0, r0, #50

	pop {r1, lr} // These are doing memory Access
	bx lr
