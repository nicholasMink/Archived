	bits 64
	global main
	extern puts

	section .data
message db	"hello", 10, 0

	section .text
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32

	mov	rdi, message
	call	puts

	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret
