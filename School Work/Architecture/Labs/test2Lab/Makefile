TARGET  = exam2lab
ASRCS	= exam2lab.asm
OBJS	= $(ASRCS:.asm=.o)
NFLAGS	= -f elf64

.PHONY:
all:	$(TARGET)

$(TARGET):	$(OBJS)
	gcc -o $(TARGET) $(OBJS)

%.o:	%.asm
	nasm $(NFLAGS) $< -o $@

.PHONY:

clean:
	rm $(TARGET) $(OBJS)

