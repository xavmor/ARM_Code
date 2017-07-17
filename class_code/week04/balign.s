.data
.balign 4
myVar1:
	.word 3

.balign
myVar2:
	.word 4

.text
.balign 4
.global main
main:
	ldr r1, addr_of_myVar1
	ldr r1, [r1]
	ldr r2, addr_of_myVar2
	ldr r2, [r2]
	add r0, r1, r2
	bx lr


addr_of_myVar1:
	.word myVar1


addr_of_myVar2:
	.word myVar2
