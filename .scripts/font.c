/*
 * This is just my little font/formating checker.
 * Feel free use/modify this.
*/

#include <stdio.h>

int main(int argc, char *argv[]) {

	printf("\n");

	for (int i = 33; i < 254; i++) {
		printf(" %c ", i);
	}

	printf("\n\n \e[0mA \e[1mA\e[0m \e[2mA\e[0m \e[4mA\e[0m \e[5mA\e[0m \e[7mA\e[0m \e[8mA\e[0m\n");
	printf("\n \e[31mA\e[0m \e[32mA\e[0m \e[33mA\e[0m \e[34mA\e[0m \e[35mA\e[0m \e[36mA\e[0m\n\n");

	return 0;
}
