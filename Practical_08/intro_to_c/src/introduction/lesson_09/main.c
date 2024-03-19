#include "stdio.h" // standard IO header file

int main()
{
    int a = 1;
    int b = 0;

    if( a > b){
        printf("a > b \n");
        if(a == 1){
            printf("a == 1\n");
        }else{
            printf("a != 1\n");
        }
    }else{
        printf("a !> b \n");
    }

    return 0;
}