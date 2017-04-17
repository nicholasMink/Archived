# Fibonacci Makefile Nick Mink

TARGET	= fibonacci
ASRCS	= fibonacci.asm
CSRCS	= read_int.c 

OBJS	= $(ASRCS:.asm=.o) $(CSRCS:.c=.o)

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
	gcc -o $(TARGET) $(OBJS)

%.o:	%.asm
	nasm -f elf64 -g $(NFLAGS) $< -o $@

%.o:	%.c
	gcc -c $< -ggdb -o $@

.PHONY:
clean:
	rm $(TARGET) $(OBJS)

.PHONY:
info:
	@echo OS:  $(OSTYPE)
	@echo CPU: $(CPUTYPE)	
	@echo NFLAGS: $(NFLAGS)
