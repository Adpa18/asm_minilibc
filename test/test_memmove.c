#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main()
{
    char tmp2[] = "abcdefghijklmnopqrstiov";
    char tmp[] = "adpa";
    // char tmp2[] = "ababcdehijklmnopqrstiov";

  memmove(NULL, NULL, 0);
  printf("str => %s | ", tmp2);
  memmove(&tmp2[2], &tmp2[0], 5);
  printf("str -> %s\n", tmp2);
  return 0;
}
