#include <stdio.h>

int main(void)
{
    int firstVar = 13;   // ...00001101
    int secondVar = 35;  // ...00100011
    int thirdVar = -1;   
    
    // 按位与
    printf("firstVar AND secondVar is : %d\n", firstVar & secondVar);

    // 按位或 00101111 -> 47
    printf("firstVar OR secondVar is : %d\n", firstVar | secondVar);

    // 按位取反 11110010 -> -14 242
    printf("NOT firstVar: %d\n", ~firstVar); 
    printf("NOT firstVar: 0x%x\n", ~firstVar); 

    // 按位异或  同则为0，不同为1 -> 00101110 ->
    printf("firstVar XOR secondVar is : %d\n", firstVar ^ secondVar);
    // 左移2位
    printf("left move 2 bits of firstVar : %d\n", firstVar << 2);

    // 右移3位
    printf("right move 3 bits of thirdVar : %d\n", thirdVar >> 3);
    printf("right move 3 bits of firstVar : %d\n", firstVar >> 3);
    return 0;
}
