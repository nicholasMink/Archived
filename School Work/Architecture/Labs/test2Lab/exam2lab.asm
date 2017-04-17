;	-------------------
;	     Nick Mink
;	    Lab Exam 2
;	-------------------
;

	bits 64
	global  main
	extern  printf
	
	section .data

message db  "Exam 2 Lab Project submitted by Nick Mink",10,0		
	
funArry	db	"000a", 10 	;<~~
	    db	"000b", 10 	;<~~
	    db	"000c", 10	; Array o' strings
	    db	"000d", 10	;<~~
	    db	"000e", 10	;<~~

offSet	db	0		
	
;	----------
;	   CODE
;	----------
	section .text

main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32

	; print array
	call	print_data

	; Uppercase letters	
	call	convert_data
	
	; print array
	call	print_data
	
	;clean up
	mov	eax, 0
	add	rsp, 32
	pop	rbp
	ret

;	--------------------
;	function: print loop
;	--------------------

print_loop:
	mov	rdi, funArry	; dest addr
	add	rdi, [offSet]	
	mov	al, 0
	call	printf		; display goods
	add	eax, 26
	mov	[offSet], eax	; update

;	-----------------------
;	subroutine: print data
;	-----------------------

print_data:
	mov	edx, [offSet]	; data register
	mov	eax, 28		; accumulator
	cmp	edx, eax	; compare value
	jl	print_loop	; jump to print loop 
	mov	eax, 0		; clean up
	mov	[offSet], eax
	ret


;	----------------------
;	function: convert data
;	output: none
;	----------------------

convert_data:
	mov	edx, funArry	; copy address

	mov	ecx, [edx+3]	; 
	sub	ecx, 32		; convert w/ counter
	mov	[edx+3], ecx	; store in position
	
	mov	ecx, [edx+8]
	sub	ecx, 32		; convert w/ counter
	mov	[edx+8], ecx	; store in position

	mov	ecx, [edx+13]
	sub	ecx, 32		; convert w/ counter
	mov	[edx+13], ecx	; store in position
	
	mov	ecx, [edx+18]
	sub	ecx, 32		; convert w/ counter
	mov	[edx+18], ecx	; store in position
	
	mov	ecx, [edx+23]
	sub	ecx, 32		; convert w/ counter
	mov	[edx+23], ecx	; store in position
	ret










