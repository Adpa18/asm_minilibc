#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  printf("%s\n", rindex("azertyuiop", 'a'));
  printf("%s\n", rindex("azertyuiop", 'z'));
  printf("%s\n", rindex("azertyuiop", 'e'));
  printf("%s\n", rindex("azertyuiop", 'r'));
  printf("%s\n", rindex("azertyuiop", 't'));
  printf("%s\n", rindex("azertyuiop", 'y'));
  printf("%s\n", rindex("azertyuiop", 'u'));
  printf("%s\n", rindex("azertyuiop", 'i'));
  printf("%s\n", rindex("azertyuiop", 'o'));
  printf("%s\n", rindex("azertyuiop", 'p'));



  printf("%p\n", rindex("azertyu", 'p'));
  printf("%p\n", rindex("", 'p'));
  printf("%s\n", rindex("adrien", 'a'));
  printf("%p\n", rindex("toto", 'c'));
  printf("%s\n", rindex("tata", 'a'));
  printf("%s\n", rindex("azpodfpqzeojkfpisdjfqsdpio?f,", '?'));
    printf("%s\n", rindex("azpodfpqzeojkfpisdjfqsdpioezdqfsofhqsjkld=fhlqsdhfoqsdifhqsdkl=fhqsdljfisdfuosdpfgiqsjdgojzprjhgiosqhposjqdfgosdjqfpjqzio?fiosdjfsdiqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqf,", 'q'));
  printf("%p\n", rindex("qefvgodshfqio", ' '));
  return 0;
}
