;   Lab 5 - Nick Mink
	bits 64
	global main
    extern printf

	section .text
main:	
	push	rbp
	mov	    rbp, rsp
	sub	    rsp, 32
fn1:
    mov     rdi, message
    mov     rax, 0
    call    printf
fn2:
    mov     qword rax, 12345
    mov     rsi, rax
    mov     rdi, gdbFun
    mov     rax, 0
    call    printf
fn3:
    mov     rbx, rax
    inc     rbx
    inc     rbx
    mov     rax, rbx
    mov     rsi, rax
    mov     rdi, gdbFun
    call    printf

	mov	    rax, 0
	add	    rsp, 32
	pop	    rbp
	ret



	section .data
message:	db	"Lab - 4 Modified hello program", 0xa, "COSC2425 - Pentium assembly language", 0xa, "Processed with NASM and GNU gcc",10,0
gdbFun:        db  "%d", 10, 0

