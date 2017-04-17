    bits 64
    global main
    extern puts

    section	.data
A      dd 5
B      dd 7
string db	"Counting",10,0

	section .text
main:
	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	[rbp-4], edi
	mov	[rbp-16], rsi
	jmp	L2
L3:
	mov	edi, string
	call	puts
	mov	eax, [A]
	add	eax, 1
	mov	[A], eax
L2:
	mov	edx, [A]
	mov	eax, [B]
	cmp	edx, eax
	jl	L3
    leave
    ret
    
	

