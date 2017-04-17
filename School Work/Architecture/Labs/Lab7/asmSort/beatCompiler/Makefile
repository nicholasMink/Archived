# Makefile for driver.c
# Lab 7 Nick Mink

TARGET	= driver
CSRCS	= $(TARGET).c
ASRCS	= sort.asm

GCC		= gcc

OBJS	= $(ASRCS:.asm=.o) $(CSRCS:.c=.o)

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
		$(GCC) -o $(TARGET) $(OBJS)

%.o:	%.c
		$(GCC) -c $< -o $@

%.o:	%.asm
	
		nasm -f elf64 -g $< -o $@

.PHONY:
asm:	$(TARGET).c
		$(GCC) -S -masm=intel $(TARGET).c -o $(TARGET).s

.PHONY:
clean:
		rm $(TARGET) $(OBJS)
