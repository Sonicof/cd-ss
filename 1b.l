
%{
#include<stdio.h>
int i=0;
%}
digit [0-9]
letter [a-zA-Z_]
%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i;}
%%
int yywrap(){
return 1;
}

int main(){
printf("Enter the values : \n");
yylex();
printf("No.of Identifiers = %d \n",i);
return 0;
}


