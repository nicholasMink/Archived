	.file	"sort.c"
	.intel_syntax noprefix
	.text
	.globl	sort
	.type	sort, @function
sort:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi
	mov	DWORD PTR [rbp-28], esi
	mov	DWORD PTR [rbp-12], 0
	jmp	.L2
.L6:
	mov	DWORD PTR [rbp-8], 0
	jmp	.L3
.L5:
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	add	rax, 1
	lea	rcx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	cmp	edx, eax
	jle	.L4
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rbp-4], eax
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	add	rax, 1
	lea	rcx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rax, rcx
	mov	eax, DWORD PTR [rax]
	mov	DWORD PTR [rdx], eax
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	add	rax, 1
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-24]
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-4]
	mov	DWORD PTR [rdx], eax
.L4:
	add	DWORD PTR [rbp-8], 1
.L3:
	mov	eax, DWORD PTR [rbp-28]
	sub	eax, 1
	sub	eax, DWORD PTR [rbp-12]
	cmp	eax, DWORD PTR [rbp-8]
	jg	.L5
	add	DWORD PTR [rbp-12], 1
.L2:
	mov	eax, DWORD PTR [rbp-28]
	sub	eax, 1
	cmp	eax, DWORD PTR [rbp-12]
	jg	.L6
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sort, .-sort
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
