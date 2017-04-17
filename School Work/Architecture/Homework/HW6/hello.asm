	bits 64
	global main
	extern printf

	section .text

main:
	; function setup
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	;
	lea	rdi, [rel message]
	mov	al, 0
	call	printf
	lea	rdi, [rel courseNum]
	mov	al, 0
	call	printf
	lea	rdi, [rel student]
	mov	al, 0
	call	printf
	lea	rdi, [rel title]
	mov	al, 0
	call	printf

	; function return
	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret

	section .data
message db	"Hello, COSC2425 Programmer!", 10, 0
courseNum db	"Course: COSC2425", 10, 0
student db	"Student: Nicholas Mink", 10, 0
title db	"Project: Nasm Hello World", 10, 0

