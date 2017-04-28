#include <stdio.h>

void func(char s[])
{
  printf("%s\n", s);
}

void funcp(char *s)
{
  printf("%s\n", s);
}

int main()
{
  char s[] = "abcd";

  func(s);

  funcp(s);
  
  return 0;
}
