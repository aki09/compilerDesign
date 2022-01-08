%{#include<stdio.h>
%}
%%
[a-zA-Z][a-zA-Z0-9]* {printf("its an identifier"); return 0;}
.* {printf("not an identifier"); return 0;}
%%
void main()
{printf("Enter Input: ");
yylex();
}
int yywrap()
{return 1;}