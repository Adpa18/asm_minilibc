#include <stdio.h>
#include <string.h>

int main()
{
  printf("%s\n", strstr("toto", "t"));
  printf("%s\n", strstr("toto", "o"));
  printf("%s\n", strstr("toto", ""));
  printf("%s\n", strstr("toto", "g"));
  printf("%s\n", strstr("azertyuiop", "a"));
  return 0;
}
