#Miguel Bernal


import stack

def add():
	a = stack.stack_pop()
	b = stack.stack_pop()
	num = a + b 
	stack.stack_int(num)
def sub():
	a = stack.stack_pop()
	b = stack.stack_pop()
	num = a - b 
	stack.stack_int(num)
def mul():
	a = stack.stack_pop()
	b = stack.stack_pop()
	num = a * b 
	stack.stack_int(num)
def div():
	a = stack.stack_pop()
	b = stack.stack_pop()
	num = a / b 
	stack.stack_int(num)
