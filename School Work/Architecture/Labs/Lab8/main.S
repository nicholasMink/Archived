; main.S - avr-gcc assembly language
; Lab 8 
; Nick Mink
#include <avr/io.h>

        .extern Timer0Setup
        .global main

        .section    .text
main: 

        ; set up the system clock
        ldi     r24, 0x80               ; set up prescaler
        sts     CLKPR, r24
        sts     CLKPR, r1               ; set to full speed

        ; set up LED port
        sbi     _SFR_IO_ADDR(DDRB), 5   ; set up the output port (bit 6)
        cbi     _SFR_IO_ADDR(PORTB), 5  ; start off with the LED off

        call    Timer0Setup             ; initialze the timer
1:      rjmp    1b   

