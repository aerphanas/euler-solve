#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#define TO 50

int main()
{
  int prev = 0, pres = 1;
  int result;
  size_t* index = (size_t*) calloc(TO, sizeof(size_t));
  
  *index = prev;
  *(index + 1) = pres;

  for (size_t i = 2; i < TO; i++)
  {
    *(index+i) = prev + pres;
    prev = pres;
    pres = *(index+i);
    if (*(index+i) >= 4000000 )
    {
      *(index+i) = 0;
      break;
    }
  }

  for (size_t i = 0; i < TO; i++)
    if (*(index+i) % 2 == 1)
      result += *(index+i);

  printf("sum of that fibonacci is %d ", result);
  printf("\n");

  free(index);

  return 0;
}
