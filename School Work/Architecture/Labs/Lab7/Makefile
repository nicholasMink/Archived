# Makefile for driver.c
# Lab 7 Nick Mink

TARGET	= driver
CSRCS	= $(TARGET).c
GCC		= gcc

OBJS	= $(CSRCS:.c=.o)

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
		$(GCC) -o $(TARGET) $(OBJS)

%.o:	%.c
		$(GCC) -c $< -o $@

.PHONY:
asm:	$(TARGET).c
		$(GCC) -S -masm=intel $(TARGET).c -o $(TARGET).s

.PHONY:
clean:
		rm $(TARGET) $(OBJS)
