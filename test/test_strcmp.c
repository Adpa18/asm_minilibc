#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main()
{
    printf("toto | tata => %d\n", strcmp("toto", "tata"));
    printf("toto | toto => %d\n", strcmp("toto", "toto"));
    printf("toto |  => %d\n", strcmp("toto", ""));
    printf(" | tata => %d\n", strcmp("", "tata"));
    printf("dqsfQSDFQSDFtoto | tata => %d\n", strcmp("dqsfQSDFQSDFtoto", "tata"));
    printf("toto | tataqdfqsdfsd => %d\n", strcmp("toto", "totoqdfqsdfsd"));
    return 0;
}
