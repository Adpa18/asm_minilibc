#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main()
{
    printf("toto | tata => %d\n", strncmp("toto", "tata", 3));
    printf("toto | toto => %d\n", strncmp("toto", "toto", 3));
    printf("toto |  => %d\n", strncmp("toto", "", 2));
    printf(" | tata => %d\n", strncmp("", "tata", 4));
    printf("dqsfQSDFQSDFtoto | tata => %d\n", strncmp("dqsfQSDFQSDFtoto", "tata", 10));
    printf("toto | tataqdfqsdfsd => %d\n", strncmp("toto", "totoqdfqsdfsd", 1));
    return 0;
}
