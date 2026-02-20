def main:

	# print to-do list

	# ask for user action

	# perform action

	# re-loop

	todolist = []

	while True:
		# display to do list
		display(todolist)

		action = input("Type A to add, R to remove, Q to quit: ").lower()

		if action == "a":
			# add
		elif action == "r":
			# remove
		elif action == "q":
			# quit
		else:
			print("Improper usage.")
			continue

	return 0

def display():
	print("To-Do List:")
	i = 1
	for item in todolist:
		print(f"{i}.) {item}")
		i++

if __name__ == "__main__":
	main()