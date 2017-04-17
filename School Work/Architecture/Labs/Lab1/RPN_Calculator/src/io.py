import stack
import alu

def reading_file():
	infile = open('rpn_info.txt', 'r')
	line = infile.readline()

	while line != '':
		line = line.rstrip('\n')

		if line == 'ADD':
			alu.add()
		
		elif line == 'SUB':
			alu.sub()
		
		elif line == 'MUL':
			alu.mul()

		elif line == 'DIV':
			alu.div()

		elif line == 'PRT':
			print(stack.stack_pop())

		elif line == 'STOP':
			return 0		

		else:
			stack.stack_int(int(line))

		line = infile.readline()

	infile.close()
