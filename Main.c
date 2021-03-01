#include <stdio.h>
#include <stdlib.h>


int yyparse(void);


int main(void)
{

if (yyparse()==0) {
  printf("\nParsing:: syntax OK\n");
}
exit(EXIT_SUCCESS);
  }
