.arch armv7-a
.cpu cortex-a7
.fpu neon-vfpv4

.data
format:
	.asciz "%f\n"


.balign 4
.text
.global main
main:
	push {r4, lr}
	vmov s0, #2.5
	vmov s1, #2.0
	vmul.f32 s0, s0, s1
	//vsub.f32 s0, s0, s1
	//vdiv.f32 s0, s0, s1
	//vneg.f32 s0, s0	@ 
	//vsqrt.f32 s0, s0	@ Square Root

	vcvt.f64.f32 d0, s0 // Casting to a 64 floating double d0 overwrites s0, s1

	vmov r2, r3, d0

	ldr r0, =format
	bl printf

	pop {r4, pc}

	bx lr
