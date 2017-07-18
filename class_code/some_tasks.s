/*****************************************************************
*  Here I will pass of scanf, byte math, short math, and long math
*
*****************************************************************/

.balign 4
.data
description:
	.ascii "This program will add and subtract two numbers\n\0"
prompt1:
	.ascii "Input a number here: \0"
prompt2:
	.ascii "Input another number here: \0"
input1:
	.asciz "%d"
input2:
	.asciz "%d" 

.balign 4
.bss
number1:
	.word 2
number2:
	.word 2
result1:
	.word 2
result2:
	.word 2


.balign 4
.text
.global main
main:
	push {r4, lr}

	// Print a small description
	ldr r0, =description
	bl printf

	// Prompt for input1
	ldr r0, =prompt1
	bl printf

	// Get user Input1
	ldr r0, =input1
	ldr r1, =number1
	bl scanf

	//Prompt for input2
	ldr r0, =prompt2
	bl printf

	//Get user Input2
	ldr r0, =input2
	ldr r1, =number2
	bl scanf

	// Branch to different functions to do some math.
	bl byte_math
	bl short_math
	bl long_math

	pop {r4, lr}
	bx lr


byte_math:
	ldr r0, =number1
	ldr r1, =number2

	add8 r3, r1, r2
	
