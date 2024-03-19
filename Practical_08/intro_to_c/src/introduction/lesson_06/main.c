#include "stdio.h" // standard IO header file

int main()
{
    int a = 10;
    int b = 20;

    // Addition example
    int total = a + b;
    printf("Addition Example total: %d\n", total);

    // Subtraction example
    total = b - a;
    printf("Subtraction Example total: %d\n", total);

    // Multiplication example
    total = b * a;
    printf("Multiplication Example total: %d\n", total);

    // Division example
    total = b / a;
    printf("Division Example total: %d\n", total);

    // Modulus example remainder after division
    total = b % a;
    printf("Modulus Example total: %d\n", total);

    return 0;
}