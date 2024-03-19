#include "stdio.h" // standard IO header file

const int MAX_VALUE = 3;

int main()
{
    int a = 0;

    // while loop
    printf("While Loop.......\n");
    printf("STARTS:\n");
    while (a < MAX_VALUE)
    {
        printf("Loop number %d \n", a);
        a++;
    }
    printf("ENDS:\n\n");

    a = 0; // reset a

    // do-while loop
    printf("Do-While.........\n");
    printf("STARTS:\n");
    do
    {
        printf("Loop number %d \n", a);
        a++;
    } while (a < MAX_VALUE);
    printf("ENDS:\n\n");

    // for loop
    printf("\nFor Loop.....\n");
    printf("STARTS:\n");
    for (a = 0; a < MAX_VALUE; a++)
    {
        printf("Loop number %d \n", a);
    }
    printf("ENDS:\n");

    return 0;
}