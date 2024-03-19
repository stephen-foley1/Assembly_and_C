#include "stdio.h" // standard IO header file

#define MAX_VALUE 3

// Mainline
int main()
{
    // Initialisation of an array data
    int data[MAX_VALUE] = {10, 20, 30};

    // Accessing and printing array data
    printf("Array..........\n");
    printf("STARTS:\n");
    for (int i = 0; i < MAX_VALUE; i++)
    {
        printf("%d\n", data[i]);
    }
    printf("ENDS:\n");

    // Declaration and Initialization of a 2D matrix array
    int matrix[MAX_VALUE][MAX_VALUE] = {
        {1, 0, 0},
        {0, 1, 0},
        {0, 0, 1}};

    // Printing elements of the 2D matrix array
    printf("\n2D Array.........\n");
    printf("STARTS:\n");
    for (int i = 0; i < MAX_VALUE; i++)
    {
        for (int j = 0; j < MAX_VALUE; j++)
        {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
    printf("ENDS:\n");
    return 0;
}