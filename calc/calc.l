%{#include<stdio.h>
  int op;
  float a,b;
%}
%%
"+" { printf("Enter 1st digit: "); scanf("%f",&a); printf("\n Enter 2nd Digit:"); scanf("%f",&b); printf("\n Sum: %f",a+b); return 0;}
"-" { printf("Enter 1st digit: "); scanf("%f",&a); printf("\n Enter 2nd Digit:"); scanf("%f",&b); printf("\n Difference: %f",a-b); return 0;}
.*  { printf("Wrong Input.\n "); return 0; }
%%
void main()
{
 printf("Enter Operator");
 yylex();
}
int yywrap()
{
 return 1;}
