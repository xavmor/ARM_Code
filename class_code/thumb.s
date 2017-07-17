.set EXIT, 1

.text
.thumb
.thumb_func // THis needs to be there so the computer knows its 16 bit thumb code.
.global _start
_start:
	mov r0, #100
	movw r4, #:lower16:fun
	movt r4, #:upper16:fun

	blx r4

	mov r7, #1
	svc #0

.thumb
.thumb_func
fun:
	mov r0, #127
	bx lr
