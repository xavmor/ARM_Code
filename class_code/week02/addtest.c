#include <stdio.h>

int asm_add(int, int);

int main() {
	int a = 12;
	int b = 15;
	int c;

	c = asm_add(a, b);

	printf("%i + %i = %i\n");

	return c;
}

