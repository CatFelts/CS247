#include <stdio.h>

//feltsc
//3.57
int cread_alt(int *xp){
  int temp = 0;
  int *ptemp = &temp;
  return *(xp ? xp : ptemp);
}

/*
assembly code====>
0000000000000000 <cread_alt>:
   0:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
   7:	00 
   8:	48 8d 44 24 fc       	lea    -0x4(%rsp),%rax
   d:	48 85 ff             	test   %rdi,%rdi
  10:	48 0f 44 f8          	cmove  %rax,%rdi
  14:	8b 07                	mov    (%rdi),%eax
  16:	c3                   	retq   
*/

//3.59
int switch_prob(int x, int n){
  int result = x;
  
  switch(n){

  case 50:
  case 52:
    result = result*4;
    break;

  case 51:
    result = result + 10;
    break;
   
  case 53:
    result = result/4;
    break;
  
  case 54:
    result = 3*result;
    /*fall through*/

  case 55:
    result = result * result;
    /*fall through*/

  default:
    result += 10;
  }
  
  return result;
}


  



