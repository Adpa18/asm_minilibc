#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main(int argc, char *argv[])
{
  char tmp[] = "tsmjkfrjsdlkfjpoer";
  char tmp2[] = "sdlfkcskdjfroizoro";
  char	*str;

  memcpy(NULL, NULL, 0);
  str = strdup(tmp);
  printf("str => %s | ", str);
  str = memcpy(str, tmp2, sizeof(tmp)  - 1);
  printf("str -> %s\n", str);
  free(str);
  return 0;
}
