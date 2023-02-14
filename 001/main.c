#include <stdio.h>

#define TO 1000

int
main()
{
  size_t result;
  for (size_t i = 0; i < TO; i++)
    if (i % 3 == 0 || i % 5 == 0)
      result += i;
  printf("%zu \n", result);
  return 0;
}