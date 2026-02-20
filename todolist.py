import sys

def main():
	todolist = []

	while True:
		# display to do list
		display(todolist)

		action = input("Type A to add, R to remove, Q to quit: ").lower()

		if action == "a":
			item = input("Enter item: ")
			todolist.append(item)
		elif action == "r":
			num = int(input("Enter item number to remove: "))
			# remove based off index = num - 1
			todolist.pop(num - 1)
		elif action == "q":
			sys.exit()
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