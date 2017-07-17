@ System Calls
.set EXIT, 1
.set READ, 3
.set WRITE, 4
.set MMAP2, 192

@Constants
.set STDIN, 0
.set STDOUT, 1

.set MAP_ANONYMOUS, 32
.set MAP_SHARED, 1
.set MUNMMAP, 91

.set PROT_EXEC, 4
.set PROT_READ, 1
.set PROT_WRITE, 2

.set MAP_PROT, (PROT_READ | PROT_WRITE)
.set MAP_FLAGS, (MAP_ANONYMOUS | MAP_SHARED)


.section	.rodata
prompt:
	.ascii "Enter something: "
	.set PROMPT_LEN, .-prompt

.text
.global _start
_start:
	// Allocate  4k of Memory
	mov r0, #0		@ address hint
	mov r1, #4096		@ Length of memory to allocate
	mov r2, #MAP_PROT
	mov r3, #MAP_FLAGS
	mov r4, #-1
	mov r5, #0
	mov r7, #MMAP2
	svc #0

	mov r6, r0 // Temporary Hold becuase r0 will be rewritten

	// Print prompt
	mov r0, #STDOUT
	movw r1, #:lower16:prompt
	movt r1, #:upper16:prompt
	mov r2, #PROMPT_LEN
	mov r7, #WRITE
	svc #0

	// Read Input
	mov r0, #STDIN
	mov r1, r6
	mov r2, #4096
	mov r7, #READ
	svc #0

	// Echo input back out
	mov r2, r0	// number of character read into
	mov r0, #STDOUT
	mov r1, r6
	mov r7, #WRITE
	svc #0

	// This unmaps memeroy aka frees up memory
	mov r0, r6
	mov r1, #4096
	mov r7, #MUNMMAP
	svc #0

	// Exit
	mov r7, #EXIT
	svc #0
