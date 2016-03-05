#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
    char *toto = strdup("toto");
    char *tata = strdup("tata");
    printf("toto | tata => %d\n", strncmp(toto, tata, 3));
    printf("toto | toto => %d\n", strncmp(toto, toto, 3));
    printf("toto |  => %d\n", strncmp(toto, "", 2));
    printf(" | tata => %d\n", strncmp("", tata, 4));
    toto = strdup("dqsfQSDFQSDFtoto");
    printf("dqsfQSDFQSDFtoto | tata => %d\n", strncmp(toto, tata, 10));
    tata = strdup("totoqdfqsdfsd");
    printf("toto | tataqdfqsdfsd => %d\n", strncmp("toto", tata, 1));
    return 0;
}
