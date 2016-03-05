#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int	main()
{
  char	*str;

  str = strdup("toto");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  str = strdup("");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  str = strdup("aaaaaaaaaaaaaaaaaaaaaaa");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  str = strdup("aaa");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  str = strdup("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  str = strdup("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
  printf ("str => %s | %d\n", str, strlen(str));
  free(str);
  return 0;
}
