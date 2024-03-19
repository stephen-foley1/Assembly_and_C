#include "stdio.h" // standard IO header file

int main()
{
    // Unary operator example
    // Unary -a operates on single operand
    int a = 10;
    int b = -a;
    printf("Unary Example: %d\n", b);
    b = +a;

    // Binary operator example
    // Binary plus operates on two operands
    int total = a + b;
    printf("Binary Example: %d\n", total);

    // Ternary operator example
    // Ternary conditional operator operates on three operands
    char *result = (total % 2 == 0) ? "even" : "odd";
    printf("Ternary Example: %d is %s\n", total, result);

    return 0;
}