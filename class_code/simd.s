.arch armv7-a
.cpu cortex-a7
.fpu neon-vfpv4



.data
vector1:
	.asciz "(%f, %f) + (%f, %f) = (%f, %f)\n"

.text
.global main
main:
	push {r4, lr}
	//vmrs r4, fpscr
	//mov r0, #1

	//orr r0, r4, r0, LSL #16
	//vmsr fpscr, r0

	vmov.f32 s0, #2.0
	vmov.f32 s1, #4.0
	vmov.f32 s2, #1.0
	vmov.f32 s3, #5.0

	//vadd.f32 s4, s0, s2
	vadd.f32 d2, d0, d1

	vcvt.f64.f32 d3, s0
	vcvt.f64.f32 d4, s1
	vcvt.f64.f32 d5, s2
	vcvt.f64.f32 d6, s3
	vcvt.f64.f32 d7, s4
	vcvt.f64.f32 d8, s5

	movw r0, #:lower16:vector1
	movt r0, #:upper16:vector1

	vmov.f32 r2, s6
	vmov.f32 r3, s7
	vpush {d4, d5, d6, d7, d8}
	bl printf
	add sp, #40

	vmsr fpscr, r4 // This needs to be set back to 000000
	pop {r4, pc}
	//bx lr
