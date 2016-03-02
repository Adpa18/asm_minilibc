#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  printf("%s\n", strchr("azertyuiop", 'a'));
  printf("%s\n", strchr("azertyuiop", 'z'));
  printf("%s\n", strchr("azertyuiop", 'e'));
  printf("%s\n", strchr("azertyuiop", 'r'));
  printf("%s\n", strchr("azertyuiop", 't'));
  printf("%s\n", strchr("azertyuiop", 'y'));
  printf("%s\n", strchr("azertyuiop", 'u'));
  printf("%s\n", strchr("azertyuiop", 'i'));
  printf("%s\n", strchr("azertyuiop", 'o'));
  printf("%s\n", strchr("azertyuiop", 'p'));



  printf("%p\n", strchr("azertyu", 'p'));
  printf("%p\n", strchr("", 'p'));
  printf("%s\n", strchr("adrien", 'a'));
  printf("%p\n", strchr("toto", 'c'));
  printf("%s\n", strchr("tata", 'a'));
  printf("%s\n", strchr("azpodfpqzeojkfpisdjfqsdpio?f,", '?'));
    printf("%s\n", strchr("azpodfpqzeojkfpisdjfqsdpioezdqfsofhqsjkld=fhlqsdhfoqsdifhqsdkl=fhqsdljfisdfuosdpfgiqsjdgojzprjhgiosqhposjqdfgosdjqfpjqzio?fiosdjfsdiqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqf,", '\0'));
  printf("%p\n", strchr("qefvgodshfqio", ' '));
  return 0;
}
