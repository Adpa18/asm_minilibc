#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main()
{
    printf("%lu\t%d\n", strlen("toto"), 4);
    printf("%lu\t%d\n", strlen(""), 0);
    printf("%lu\t%d\n", strlen(NULL), 0);
    printf("%lu\t%d\n", strlen("aaaaaaaaaaaaaaaaaaaaaaa"), 23);
    printf("%lu\t%d\n", strlen("aaa"), 3);
    printf("%lu\t%d\n", strlen("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"), 56);
    printf("%lu\t%d\n", strlen("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"), 80);
    return 0;
}
