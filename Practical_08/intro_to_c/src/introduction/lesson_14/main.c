#include "stdio.h" // standard IO header file

// Function prototypes
void byValue(int a);
void byReference(int *a);

int main()
{
    int a = 10;
    int b = a; // use this value to check is anything happened to value of a

    printf("Value of a: %d\n", a);

    // Passing num by value
    byValue(a);
    printf("Pass by value a : %d\n", a);

    if (b == a)
    {
        printf("No side effects here\n");
    }
    else
    {
        printf("Something happened a!\n");
    }

    // Passing num by reference
    byReference(&a);
    printf("Pass by reference a : %d\n", a);

    if (b == a)
    {
        printf("No side effects here\n");
    }
    else
    {
        printf("Something happened a!\n");
    }

    return 0;
}

// Function pass by value
void byValue(int a)
{
    a = a * 3;
}

// Function pass by reference
void byReference(int *a)
{
    *a = *a * 3;
}