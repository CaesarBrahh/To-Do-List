#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ITEMS_AMOUNT 99
#define MAX_ITEM_LENGTH 18

int main(void)
{
	char *list_items[MAX_ITEMS_AMOUNT] = {0};
	int list_items_length = 0;

	// while true loop start
	while (1)
	{
		// clear screen
		printf("\033[2J\033[H"); 

		// print to-do list TUI
		printf("\033[1m┌──────────────────────┐\033[0m\n");
		printf("\033[1m│      TO-DO LIST      │\033[0m\n");
		for (int i = 0; i < list_items_length; i++)
		{
			printf("\033[1m│%d.) %-*.*s│\033[0m\n",
					i+1,
					MAX_ITEM_LENGTH,
					MAX_ITEM_LENGTH,
					list_items[i]);
		}
		printf("\033[1m└──────────────────────┘\033[0m\n");

		// ask user whether to add (a) or remove (r)
		printf("\n\033[2m[a] add   [r] remove   [q] quit\033[0m\n");
		printf("> ");

		// user intputs either a or r
		char action; // declar action character variable
		scanf("%c", &action); // store the character value typed by user into address location of action variable
		int ch;
		while ((ch = getchar()) != '\n' && ch != EOF) {}

		// if a
		if (action == 'a')
		{
			// ask user for text to add
			printf("New item: ");
			char item[MAX_ITEM_LENGTH];
			fgets(item, sizeof(item), stdin);
			item[strcspn(item, "\n")] = '\0'; // remove trailing new line

			// add text
			list_items[list_items_length] = strdup(item); // allocate + copy
			list_items_length++; // increment list_items_length by 1
		}
		// if r
		else if (action == 'r')
		{
			// ask user which to remove based off the number
			printf("Type which list number to remove: ");
			int n;
			scanf("%d", &n);
			int ch2;
			while ((ch2 = getchar()) != '\n' && ch2 != EOF) {}

			// remove 
			for (int i = 0; i < list_items_length-1; i++)
			{
				if (i >= n-1)
				{
					list_items[i] = list_items[i+1];
				}
			}
			list_items[list_items_length-1] = "0";
			list_items_length--;
		}
		else
		{
			return 0;
		}	
	}
}