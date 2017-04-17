# Makefile for hello.asm
# Homework 6

TARGET	= notHello
ASRCS	= notHello.asm
OBJS	= $(ASRCS:.asm=.o)
NFLAGS  = -f elf64

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
	gcc -o $(TARGET) $(OBJS)

%.o: 	%.asm
	nasm $(NFLAGS) $< -o $@

.PHONY:


.PHONY:
clean:
	rm $(TARGET) $(OBJS)


