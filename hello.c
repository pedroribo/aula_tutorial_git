#include <stdio.h>
#include <math.h>

double f1(double);
double f2(double);

int main() {
    printf("SEL0456 Trabalho 1\n");
    double f = 1.234;
    printf("f1 de %g = %g\n", f, f1(f));
    printf("f2 de %g = %g\n", f, f2(f));

    return 0;
}
