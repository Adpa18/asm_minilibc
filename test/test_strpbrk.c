#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[])
{
  printf("toto => %s\n", strpbrk("toto", "t"));
  printf("toto => %s\n", strpbrk("toto", "o"));
  printf("toto => %s\n", strpbrk("toto", ""));
  printf(" => %s\n", strpbrk("", "sdfsdf"));
  printf(" => %s\n", strpbrk("", ""));
  printf("abcdefghijkl => %s\n", strpbrk("abcdefghijkl", "ejc"));
  printf("abcdefghijkl => %s\n", strpbrk("abcdefghijkl", "j"));
  printf("abcdefghijkl => %s\n", strpbrk("abcdefghijkl", "l"));
  printf("abcdefghijkl => %s\n", strpbrk("abcdefghijkl", "a"));
  printf("abcdefghijkl => %s\n", strpbrk("i", "abcdefghijkl"));

  return 0;
}
