#include <stdio.h>

int absdiff(int x, int y){
  return x < y ? y-x : x-y;
}

int main(void){
  int a = 3;
  int b = 4;
  int result = absdiff(a, b);
  printf("the absdiff of a = %d and b = %d ===> %d", a , b, absdiff(a, b));
}
