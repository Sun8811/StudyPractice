#include <stdio.h>

int main(void)
{
    int i = 0;
    do {
        printf("i: %d\n", i);
        i++;
    } while(i < 3000000);
    return 0;

}
