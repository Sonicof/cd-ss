%{
#include<stdio.h>
#include<stdlib.h>
%}
%token A B 
%%
Str:S'\n'{return 0;}
S:A S B;
 | ;
%%
int yyerror()
{
printf("invalid string\n");
exit(0);
}
int main()
{
printf("type the string:\n");
if(!yyparse())
printf("valid string\n");
return 0;
} 
