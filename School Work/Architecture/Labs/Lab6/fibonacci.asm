;************************************
;    Fibonnaci Lab 6 - Nick Mink    |
;           Using Recursion         |
;************************************
        bits 64
        global  main
        extern  printf
	    extern  read_int

        section .text
main:
	mov	    r13, 1              ; function setup

    mov     rdi, message        
    mov     al, 0
    call    printf              ; print the greeting message to the screen
    call    initialize_number   
    mov     rax, 0
    ret

;*************************
; Error Message :
; Displays error message  
; if user's number is not
; within 0 - 20
;*************************
error_message:
	mov	    rdi, error
	mov 	al, 0
	call	printf              ; display error message
	mov	    r13, 1
	jmp	    initialize_number   ; jump back for new user input

;**************************
; Initialize Number :
; Read, error check, and 
; display user's number &
; calculation
;**************************
initialize_number:

	mov	    rdi, get_number	    
	mov	    al, 0
	call	printf              ; display user prompt
	call	read_int  		    ; read the integer from the user with c function
	cmp	    rax, 20			    ; check if number is 0 - 20
	ja	    error_message	    ; if above 20, jump to error message
	cmp	    rax, 0
	jb	    error_message	    ; if below 0, jump to error message

	mov	    r15, rax	        ; store valid number in r15
    push    r15                 ; preserve user number
    call    fibo                ; call recursion function
    add     rsp, 8              
    mov     rdi, fibo_output    
    mov     rsi, r15
    mov     rdx, rax
    mov     al, 0
    call    printf              ; display user's number with fibo calculation
    mov     rdi, quit_msg       
    mov     rax, 0
    call    printf              ; say goodbye!
    mov     rax, 0
    ret

;****************************
; fibo - recursion function 
;****************************

fibo:
	push    rbp                 ; function setup
    mov     rbp, rsp
	mov	    rbx, [rbp+16]		; move number into rbx
	cmp	    rbx, 0			    ; zero case check
	je	    zero        		; jump to zero
	cmp	    rbx, 1			    ; one case check
	je	    one         		; jump to one

	dec	    rbx			        ; make fibo n - 1 value
	push	rbx			        ; save number
	call	fibo			    ; start recursion
	add	    rsp, 8
	push	rax			        ; save value
	mov	    rbx, [rbp+16]		
	dec	    rbx			        ; n - 1
	dec	    rbx			        ; n - 2
	push	rbx			        ; save n - 2
	call	fibo			    ; continue recursion
	pop	    rbx
	pop	    r8			        ; get fibo - 1 
	add	    rax, r8			    ; add to fibo total
	jmp	    end                 ; jump to end

;**************************
; Zero :
; For user input of 0
;**************************
zero:
	mov	rax, 0
	jmp	end

;**************************
; One :
; For user input of 1
;**************************
one:
	mov	rax, 1
	jmp	end

;**************************
; End :
; Necessary for user inputs
; with cases of 0 and 1
;**************************
end:
	mov	rsp, rbp                    ; clean up
	pop	rbp
	ret

            section .data
message:
    db      10,"    -----------------", 10
	db      "    Fibonacci Numbers", 10
    db      "    -----------------", 10
    db      10,"This program calculates the",10
    db      "Fibonacci number for given N value.",10
    db      "The Fibonacci formula is defined as",10
    db      10,"    f(n) = f(n - 1) + f(n + 2)",10,0


quit_msg:
	db	10,"   ***Goodbye***", 10, 0

get_number:
	db	10,"Enter an integer: ", 0

error:
	db	10,"   ***Your number must be 0 - 20, sorry...", 10, 0

fibo_output:
	db	"The Fibonacci number of %d = %d!",10,0
