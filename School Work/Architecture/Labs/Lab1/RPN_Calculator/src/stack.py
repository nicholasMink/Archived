###################################################
#                   Stack module                  #
#                                                 #
#       a list with push and pop functionality    #
##################################################


# Create a list to serve as stack
total = []

# Push an int onto the stack
def stack_int(num):
	total.append(num)

# Pop an int off the stack
def stack_pop():
	return total.pop()

def is_empty():
	empty = len(total)

	if empty == 0:
		return True 
	else:
		return False

