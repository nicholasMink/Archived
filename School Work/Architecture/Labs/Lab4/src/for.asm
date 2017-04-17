    bits 64
    global main
    extern puts
    
    section .data
A   dd  5
B   dd  7
string db "counting", 10,0

	section .text
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 16
	mov	dword[rbp-4], edi
	mov	qword[rbp-16], rsi
	mov	dword[A],0 
	jmp	L2
L3:
	mov	edi, string
	call	puts
	mov	eax, dword[A]
	add	eax, 1
	mov	dword[A], eax
L2:
	mov	eax, dword[A]
	cmp	eax, 2
	jle	L3
	leave
	ret
	
