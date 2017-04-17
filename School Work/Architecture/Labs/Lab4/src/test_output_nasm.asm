	bits 64
	global main
	extern puts

	section .data
A   dd  3
B   dd  7
LC0 db  "Test output."

	section .text
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32

	mov	edi, LC0
    call puts

	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret
