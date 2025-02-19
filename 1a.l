%{
#include<stdio.h>
int ln=0, sp=0, wd=0, ch=0;
%}
%%
[\n] {ln++; ch+=yyleng;}
[ \t] {sp++; ch+=yyleng;}
[^\t\n ]+ {wd++; ch+=yyleng;}
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("a.txt","r");
yylex();
printf("line:%d\n",ln);
printf("space:%d\n",sp);
printf("word:%d\n",wd);
printf("character:%d\n",ch);
fclose;
return 0;
}
