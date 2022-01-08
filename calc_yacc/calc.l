%{#include<stdio.h>
  #include"y.tab.h"
  #define YYSTYPE int
  extern YYSTYPE yylval;
  void yyerror(char *);
%}
%%
[0-9]+ {yylval=atoi(yytext);
	return INTEGER;	
	}
[-+\n] return *yytext;
yyerror("invalid");
%%
int yywrap(void) {return 1;}
	
