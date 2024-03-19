#include "stdio.h"

int main()
{
    int a;

    // Call to printf function a is substituted for %d
    printf("Value of a is %d\n", a);

    // Scope
    {
        a = 10;
        printf("Value of a is %d\n", a);
    }

    // Scope
    {
        a = 100;
        printf("Value of a is %d\n", a);
    }

    printf("Value of a is %d\n", a);

    return 0;
}