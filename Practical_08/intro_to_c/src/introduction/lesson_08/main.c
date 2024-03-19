#include "stdio.h"   // standard IO header file
#include <stdbool.h> // standard bool header file

int main()
{
    int a = 1;
    int b = 0;

    // Bitwise examples
    bool result = a & b;
    printf("a & b Example: %s\n", (result == 0) ? "false" : "true");

    result = a | b;
    printf("a | b Example: %s\n", (result == 0) ? "false" : "true");

    result = a ^ b;
    printf("a ^ b Example: %s\n", (result == 0) ? "false" : "true");

    // Left shift operator example
    int shift_result = 0b1111 << a; // 0b1111 is 15 or F left shift 1 place will result in 11110
    printf("a << b Example: %d\n", shift_result);

    // Right shift operator example
    shift_result = shift_result >> a; // 0b11110 is 30 right shift 1 place will result in 1111
    printf("a >> b Example: %d\n", shift_result);

    return 0;
}