@ System Calls
.set EXIT, 1
.set BRK, 45

@ Constants


.data
init_break:
	.word 0
curr_break:
	.word 0




.text
.global _start
_start:
	mov r7, #BRK
	mov r0, #0
	svc #0

	movw r4, #:lower16:init_break
	movt r4, #:upper16:init_break
	str r0, [r4]

	movw r4, #:lower16:curr_break
	movt r4, #:upper16:curr_break
	str r0, [r4]

	add r0, r0, #16
	mov r7, #BRK
	svc #0

	movw r4, #:lower16:curr_break
	movt r4, #:upper16:curr_break
	svc #0

	mov r7, #1
	svc #0

@ You have to use the debugger to understand this code.
