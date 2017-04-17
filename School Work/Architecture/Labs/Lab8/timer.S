; Timer.S - Timer0 code for blink
; Lab 8 Nick Mink

#include <avr/io.h>

        .global Timer0Setup

        .section    .data

ISRcount:   .byte   0

        .section    .text

.equ    LED_PIN, 5


;----------------------------------------------------------------------
; Initialize Timer 0 for interrupts
;
Timer0Setup:
        in      r16, _SFR_IO_ADDR(TCCR0B)
        ori     r16, (1 << CS02) | (1 << CS00)      ; divide by 1024
        out     _SFR_IO_ADDR(TCCR0B), r16           ; set timer clock
        sbi     _SFR_IO_ADDR(TIFR0), (1<< TOV0)     ; clear interrupt flag
;
        lds     r16, TIMSK0                         ; get interrupt mask reg
        ori     r16, (1 << TOIE0)                   ; enable interrupts
        sts     TIMSK0, r16
        out     _SFR_IO_ADDR(TCNT0), r1             ; zero the timer counter
        sts     ISRcount, r1                        ; and our counter variable
        ;
        sei                                         ; let the fun begin
        ret

;----------------------------------------------------------------------
; Timer0 overflow ISR
;

        .global     TIMER0_OVF_vect
TIMER0_OVF_vect:
        ; save callers registers
        push    r1
        push    r0
        in      r0, _SFR_IO_ADDR(SREG)
        push    r0
        eor     r1, r1
        push    r24
        push    r25
        ;
        ; bump the ISR counter
        lds     r24, ISRcount       ; get current count
        inc     r24                 ; add one
        sts     ISRcount, r24       ; put it back
        ;
        ; test the counter to see if we toggle the LED
        lds     r24, ISRcount       ; needed?
        cpi     r24, 61             ; one second is 61 interrupts
        brcs    1f                  ; skip if not
        ;
        ; toggle LED port
        in      r24, _SFR_IO_ADDR(PORTB)          ; get current PORTD
        ldi     r25, (1 << LED_PIN)               ; LED bit position
        eor     r24, r25                          ; toggle bit
        out     _SFR_IO_ADDR(PORTB), r24          ; set back in place
        sts     ISRcount, r1                      ; sero the counter
1:
        ; recover user's registers
        pop     r25
        pop     r24
        pop     r0
        out     _SFR_IO_ADDR(SREG), r0            
        pop     r0
        pop     r1
        reti

