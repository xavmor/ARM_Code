// System Calls
.set EXIT, 1

.text
.global _start
_start:
	mov r0, #26
	cmp r0, #27	// If r0 !- 27 then beq will set r0 to 13
	beq .Lskip_to_here// THis checks to see if the result was zero and will set a flag.
	mov r0, #13

.Lskip_to_here:

	mov  r7, #EXIT // This will replace EXIT with 1
	svc #0
