#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main(int argc, char *argv[])
{
  char tmp[] = "tsm";
  int tmpin[3] = {6, 6, 6};
  char	*str;

  memset(0, 0, 0);
  str = strdup(tmp);
  printf("str => %s | ", str);
  memset(str, 'A', sizeof(tmp) - 1);
  printf("str -> %s\n", str);
  int i;
  for (i = 0; i < 3; i++)
    {
      printf("%d, ", tmpin[i]);
    }
  memset(tmpin, 0, 3 * sizeof(int));
  printf("\n");
  for (i = 0; i < 3; i++)
    {
      printf("%d, ", tmpin[i]);
    }
  free(str);
  return 0;
}
