%{#include<stdio.h>
%}
%%
[a-z]+|[A-Z]+ {printf("Part of Positive Closure.\n"); return 0;}
.* {printf("Not a part of Positive Closure.\n"); return 0;}
%%
void main()
{printf("Enter string.");
yylex();
}
int yywrap()
{return 1;}


