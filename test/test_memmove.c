#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main()
{
  char tmp[] = "tsmjkfrjsdlkfjpoer";
  char tmp2[] = "abcdefghijklmnopqrstiov";
  char	*str;

  memmove(NULL, NULL, 0);
  str = strdup(tmp);
  printf("str => %s | ", tmp2);
  memmove(&tmp2[2], &tmp2[0], 5);
  printf("str -> %s\n", tmp2);
  printf("str => %s | ", tmp2);
  memmove(&tmp2[0], &tmp2[2], 5);
  printf("str -> %s\n", tmp2);
  free(str);
  return 0;
}
