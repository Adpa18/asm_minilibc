#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[])
{
  printf("toto => %s\n", strdup("toto"));
  printf("toto => %s\n", strdup("toto"));
  printf("toto => %s\n", strdup("toto"));
  printf(" => %s\n", strdup(""));
  printf(" => %s\n", strdup(""));
  printf("abcdefghijkl => %s\n", strdup("abcdefghijkl"));
  printf("abcdefghijkl => %s\n", strdup("abcdefghijkl"));
  printf("abcdefghijkl => %s\n", strdup("abcdefghijkl"));
  printf("abcdefghijkl => %s\n", strdup("abcdefghijkl"));
  printf("abcdefghijkl => %s\n", strdup("i"));

  return 0;
}
