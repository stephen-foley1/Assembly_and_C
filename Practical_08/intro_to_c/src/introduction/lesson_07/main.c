#include "stdio.h"   // standard IO header file
#include <stdbool.h> // standard bool header file

int main()
{
    int a = 10;
    int b = 20;

    // Relational examples
    bool result = a > b;
    printf("a > b Example: %s\n", (result == 0) ? "false" : "true");

    result = a < b;
    printf("a < b Example: %s\n", (result == 0) ? "false" : "true");

    result = a >= b;
    printf("a >= b Example: %s\n", (result == 0) ? "false" : "true");

    result = a <= b;
    printf("a <= b Example: %s\n", (result == 0) ? "false" : "true");

    result = a == b;
    printf("a == b Example: %s\n", (result == 0) ? "false" : "true");

    result = a != b;
    printf("a != b Example: %s\n", (result == 0) ? "false" : "true");

    // Logical Examples
    result = a && b;
    printf("a && b Example: %s\n", (result == 0) ? "false" : "true");

    result = a || b;
    printf("a || b Example: %s\n", (result == 0) ? "false" : "true");

    result = !a;
    printf("!a Example: %s\n", (result == 0) ? "false" : "true");

    result = !!a;
    printf("a!! Example: %s\n", (result == 0) ? "false" : "true");

    return 0;
}