#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
    char *toto = strdup("toto");
    char *tata = strdup("tata");
    printf("toto | tata => %s\n", strstr(toto, tata));
    printf("toto | toto => %s\n", strstr("toto", toto));
    printf("toto |  => %s\n", strstr(toto, ""));
    printf(" | tata => %s\n", strstr("", tata));
    toto = strdup("dqsfQSDFQSDFtoto");
    printf("dqsfQSDFQSDFtoto | tata => %s\n", strstr(toto, tata));
    tata = strdup("totoqdfqsdfsd");
    printf("toto | tataqdfqsdfsd => %s\n", strstr("toto", tata));
    toto = strdup("toto");
    printf("%s\n", strstr(toto, "t"));
    printf("%s\n", strstr(toto, "ot"));
    printf("%s\n", strstr(toto, "o"));
    // printf("%s\n", strstr(toto, ""));
    // printf("%s\n", strstr(toto, "g"));
    toto = strdup("azertyuiop");
    printf("%s\n", strstr(toto, "a"));
    printf("%s\n", strstr(toto, "a"));
    return 0;
}
