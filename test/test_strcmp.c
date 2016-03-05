#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main()
{
    char *toto = strdup("toto");
    char *tata = strdup("tata");
    printf("toto | tata => %d\n", strcmp(toto, tata));
    printf("toto | toto => %d\n", strcmp(toto, toto));
    printf("toto |  => %d\n", strcmp(toto, ""));
    printf(" | tata => %d\n", strcmp("", tata));
    toto = strdup("dqsfQSDFQSDFtoto");
    printf("dqsfQSDFQSDFtoto | tata => %d\n", strcmp(toto, tata));
    tata = strdup("totoqdfqsdfsd");
    printf("toto | tataqdfqsdfsd => %d\n", strcmp("toto", tata));
    return 0;
}
