#include "stdio.h" // standard IO header file

void main()
{
    int a = 10;
    int b = 20;
    float c = 20.0122;
    char my_char = 'a';
    char *my_char_ptr = "Hello";

    // Call to printf function a is substituted for %d
    printf("Value of a is %d\n", a);

    // Call to printf function a is substituted for %d
    printf("Value of b is %d\n", b);

    // Call to printf function c is substituted for %f precision is 4 characters
    printf("Value of c is %.4f\n", c);

    // Call to printf function my_char is substituted for %c
    printf("Value of my_char is %c\n", my_char);

    // Call to printf function my_char_ptr is substituted for %c
    printf("Value in memory for my_char_ptr is %s\n", my_char_ptr);

    // Call to printf function my_char_ptr is substituted for %c
    printf("Value in memory for first char of my_char_ptr is %c\n", *my_char_ptr);
}