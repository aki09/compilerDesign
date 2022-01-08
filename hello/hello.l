
%{
#include<stdio.h>
char name[10];
%}
%%
yes|YES|Yes|Y|y {printf("Enter name\n"); scanf("%s",&name); printf("Good Morning %s \n",name); printf("Do you wish to continue?"); }
.* {printf("Exiting...\n"); return 0;}
%%
int main()
{printf("Do you wish to continue ?");
yylex();
}
int yywrap()
{return 1;}