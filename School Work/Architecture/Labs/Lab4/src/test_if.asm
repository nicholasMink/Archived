    bits 64
    global main
    extern puts

	section	.data
A   dd 3
B   dd 7
stringT db	"True"

stringF	db "False"

	section .text
	
main:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	[rbp-4], edi
	mov	[rbp-16], rsi
	mov	edx, [A]
	mov	eax, [B]
	cmp	edx, eax
	jle	L2
	mov	edi, stringT
	call	puts
	jmp	L4
L2:
	mov	edi, stringF
	call	puts
L4:
	leave
	ret
	

