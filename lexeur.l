%{
#include <stdio.h>
#include "parseur.tab.h"
%}

%%

0|[1-9][0-9]* { printf("lex::NOMBRE %s\n",yytext); return INT; } { ; } /* ignore space, tab, and line return */
[ \t\n]       { ; } /* ignore space, tab, and line return */
";"         {printf("lex::expression  point virgule %s\n",yytext); return PT_VIRG ; }
","        {printf("lex::expression virgule %s\n",yytext); return VIRGULE; }
.              { printf("lex::char %s\n",yytext); return yytext[0]; }
%%
