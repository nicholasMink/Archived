;   Nick Mink
;   Lab 7
;   Optimizing with Assembly

    bits 64 
    global sort

    section .text
sort:
	
	push	rbp                 ; function setup
	mov	    rbp, rsp
	
	mov	    r14, rdi            ; outer loop setup
	mov	    r15, rsi
	xor	    r12, r12

	jmp	    L2

L6:
	xor	    r13, r13            ; inner loop setup
	jmp	    L3

L5:
	lea	    rdx, [r13*4]        ; 4 byte count
	mov	    rax, r14            
	add	    rax, rdx            ; add count

	mov	    edx, DWORD [rax]
	
	lea	    rcx, [0+r13*4+4]    ; new counter
	mov	    rbx, r14
	add	    rbx, rcx            ; aqcuire address 
	mov	    ebx, DWORD [rbx]    ; save address

	cmp	    edx, ebx            ; compare order
	jle	    L4

	lea	    rdx, [0+r13*4]      ; load counter
	mov	    rax, r14            ; move index
	add	    rdx, rax            ; get what is inside
	mov	    DWORD [rdx], ebx    

	lea	    rdx, [0+r13*4+4]    ; load position + 1
	mov	    rax, r14            ; save address
	add	    rdx, rax            ; get address
    mov     DWORD [rdx], edx

L4:
	inc	    r13

L3:
	mov	    rax, r15            ; load current count & decrement
	dec	    rax                 
	sub	    rax, r12
	cmp	    rax, r13            ; compare if greater
	jg	    L5
	inc     r12

L2:
	mov	    rax, r15            ; load count
    dec     rax                 
    cmp     rax, r12            ; compare if greater
	jg	    L6
	pop	    rbp                 
    ret

