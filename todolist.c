#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ITEMS_AMOUNT 99

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

		// perform action

	}
	// re-loop
}

int display(char *todolist[], int todolist_length)
{
	printf("To-Do List:");
	for (int i = 0; i < todolist_length; i++)
	{
		printf("%i.) %s\n", i+1, todolist[i]);
	}

	return 0;
}