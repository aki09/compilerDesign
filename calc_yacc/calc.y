%{#include<stdio.h>
  int yylex();
  void yyerror(char *);
%}
%token INTEGER
%%
program:program expr '\n'{printf("%d\n",$2);}
|;
expr: INTEGER {$$=$1;}
|expr'+'expr{$$=$1+$3;}
|expr'-'expr{$$=$1-$3;}
%%
void yyerror(char *s)
{fprintf(stderr,"%s\n",s);}
int main()
{ yyparse();
  return 0;
}
