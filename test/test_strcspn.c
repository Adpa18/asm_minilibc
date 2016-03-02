#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
  printf("toto => %d\n", strcspn("toto", "t"));
  printf("toto => %d\n", strcspn("toto", "o"));
  printf("toto => %d\n", strcspn("toto", ""));
  printf(" => %d\n", strcspn("", "sdfsdf"));
  printf(" => %d\n", strcspn("", ""));
  printf("abcdefghijkl => %d\n", strcspn("abcdefghijkl", "ejc"));
  printf("abcdefghijkl => %d\n", strcspn("abcdefghijkl", "j"));
  printf("abcdefghijkl => %d\n", strcspn("abcdefghijkl", "l"));
  printf("abcdefghijkl => %d\n", strcspn("abcdefghijkl", "a"));
  printf("abcdefghijkl => %d\n", strcspn("i", "abcdefghijkl"));
  printf("abcdefghijkl => %d\n", strcspn("i", "abcdefghjl"));

  return 0;
}
