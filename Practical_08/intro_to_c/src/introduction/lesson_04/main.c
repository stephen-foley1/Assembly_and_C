#include "stdio.h" // standard IO header file

const int MAX_VALUE = 100;
const float PI = 3.14;

int main()
{
    const int MIN_VALUE = 10;

    // Call to printf function MAX_VALUE is substituted for %d
    printf("Value of MAX_VALUE is %d\n", MAX_VALUE);

    printf("Value of PI is %.2f\n", PI);

    printf("Value of MIN_VALUE is %d\n", MIN_VALUE);

    // Prints out 16 as 0x makes the value a HEX value 10 which is 16 in base 10
    const int LITERAL = 0x10;

    printf("Value of LITERAL is %d\n", LITERAL);

    return 0;
}