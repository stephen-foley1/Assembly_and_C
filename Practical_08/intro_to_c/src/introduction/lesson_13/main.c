#include "stdio.h"  // standard IO header file
#include "stdlib.h" // standard IO header file

// Method overloading trick in C
typedef enum
{
    T_INT,
    T_FLOAT
} Overloaded;

// Structure to hold Type
typedef struct
{
    Overloaded type;
    union
    {
        int i;
        float f;
    } UnionType;
} OverloadedType;

// Function declaration
void type(OverloadedType *overloaded_type, char *value)
{
    switch (overloaded_type->type)
    {
    case T_INT:
        overloaded_type->UnionType.i = atoi(value);
        break;
    case T_FLOAT:
        overloaded_type->UnionType.f = atof(value);
        break;
    }
}

void add(OverloadedType *arg1, OverloadedType *arg2)
{
    switch (arg1->type)
    {
    case T_INT:
    {
        int sum = arg1->UnionType.i + arg2->UnionType.i;
        printf("Result : %d\n", sum);
    }
    break;
    case T_FLOAT:
    {
        float sum = arg1->UnionType.f + arg2->UnionType.f;
        printf("Result : %.2f\n", sum);
    }
    break;
    }
}

int main()
{
    // Calling overloaded add function

    // Add int to int, we could add a pointer to return location
    OverloadedType ot1;
    ot1.type = T_INT;
    type(&ot1, "22");

    OverloadedType ot2;
    ot2.type = T_INT;
    type(&ot2, "20");

    add(&ot1, &ot2);

    // printf("Result %d\n", (add(&ot1, &ot2)).type.UnionType.i);

    // Add float to float, we could add a pointer to return location
    ot1.type = T_FLOAT;
    type(&ot1, "22.01");

    ot2.type = T_FLOAT;
    type(&ot2, "20.12");

    add(&ot1, &ot2);

    return 0;
}