int main(void) {
	int a = 1;
	int b = 1;

	while (1) {
		int tmp = a;
		a = a + b;
		b = tmp;
	}
}
