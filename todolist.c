#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ITEMS_AMOUNT 99
#define MAX_ITEM_LENGTH 19

int display(char *todolist[], int todolist_length);

int main(void)
{
	// define and instantiate list
	char *todolist[MAX_ITEMS_AMOUNT];
	int todolist_length = 0;

	// Start loop
	while (1)
	{
		// print to-do list
		display(todolist, todolist_length);

		// ask for user action
		printf("Type A to add, R to remove, Q to quit: ");
		char action;
		scanf("%c", &action);
		getchar();

		// perform action
		if (action == 'a')
		{
			todolist[todolist_length] = malloc(MAX_ITEM_LENGTH);
			printf("New item: ");
			fgets(todolist[todolist_length], MAX_ITEM_LENGTH, stdin);
			int index = strcspn(todolist[todolist_length], "\n");
			todolist[todolist_length][index] = '\0';
			todolist_length++;
		}
		else if (action == 'r')
		{
			printf("Which number item would you like to remove: ");
			int n;
			scanf("%i", &n);
			getchar();

			int index = n - 1;
			free(todolist[index]);
			for (int i = 0; i < todolist_length-1; i++)
			{
				if (i >= index)
				{
					todolist[i] = todolist[i+1];
				}
			}
			todolist_length--;
		}
		else if (action == 'q')
		{
			return 0;
		}
		else
		{
			printf("Improper Usage.\n");
		}
	}
}

int display(char *todolist[], int todolist_length)
{
	printf("To-Do List:\n");
	for (int i = 0; i < todolist_length; i++)
	{
		printf("%i.) %s\n", i+1, todolist[i]);
	}

	return 0;
}