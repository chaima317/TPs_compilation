%{
int yylex(void); /* -Wall : avoid implicit call */ int yyerror(const char*); /* same for bison */
%}

%token PT_VIRG
%token INT
%token VIRGULE
%start resultat

%%
resultat: expression ;
expression:
   expression '+' terme
 | expression '-' terme
 | terme
 |point
 ;
terme:
   terme '*' facteur
| facteur
;
facteur:
  '(' expression ')'
 | '-' facteur
 | NOMBRE
 ;
point:
 expression PT_VIRG
 | PT_VIRG
;
NOMBRE:
INT VIRGULE INT
|INT
;



%%

#include <stdio.h>
int yyerror(const char *msg){ printf("Parsing:: syntax error\n"); return 1;} int yywrap(void){ return 1; } /* stop reading flux yyin */
