%{#include<stdio.h>
int m;
%}
%%
[0-9]+ {m=atoi(yytext);
	if(m%2==0)
		printf("Even");
	else
		printf("Odd");
       }
.* {printf("Wrong\n"); return 0;}
%%
void main()
{printf("Enter I/O: ");
yylex();
}
int yywrap()
{return 1;}
