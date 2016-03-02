#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
{
  printf("coucou | coUAcou = %d\n", strcasecmp(strdup("coucou"), strdup("coUAou")));
  printf("coucou | COUCOU = %d\n", strcasecmp(strdup("coucou"), strdup("COUCOU")));
  printf("coucou | COCO = %d\n", strcasecmp(strdup("coucou"), strdup("COCO")));
  printf("COUCOU | coucou = %d\n", strcasecmp(strdup("COUCOU"), strdup("coucou")));
  printf("COCO | coco = %d\n", strcasecmp(strdup("COCO"), strdup("coco")));
  printf("COCOOO | coco = %d\n", strcasecmp(strdup("COCOOO"), strdup("coco")));
  return 0;
}
