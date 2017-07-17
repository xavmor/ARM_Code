.data
test:
	.ascii "Hello lets see if we can process this string!\n\0"
	.set test_Len, .-test
.bss
test1:
	.space 20

.balign 4
.text
.global _start
_start:
	ldr r0, =test
	ldm r0, {r1, r2, r3}
	ldrh r4, [r0]

	ldr r5, =test1
	stm r5, {r1, r2, r3}
	mov r8, #0
	add r8, #12
	strh r4, [r5, r8]

	mov r0, #1
	mov r1, r5
	mov r2, #100
	mov r7, #4
	svc #0
	
	mov r7, #1
	svc #0
