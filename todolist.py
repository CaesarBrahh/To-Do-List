import sys

def main():
	todolist = []

	while True:
		display(todolist)

		action = input("Type A to add, R to remove, Q to quit: ").lower()

		if action == "a":
			item = input("Enter item: ")
			todolist.append(item)
		elif action == "r":
			num = int(input("Enter item number to remove: "))
			todolist.pop(num - 1)
		elif action == "q":
			sys.exit()
		else:
			print("Improper usage.")
			continue

def display(todolist):
	print("To-Do List:")
	i = 1
	for item in todolist:
		print(f"{i}.) {item}")
		i = i + 1

if __name__ == "__main__":
	main()