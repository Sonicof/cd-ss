%{
#include<stdio.h>
int s=0;
int m=0;
%}
%%
"/"[a-zA-Z0-9' '\t\n]"*/" m++;
"//".* s++;
%%
void main(){
	yyin=fopen("f1.txt","r");
	yyout=fopen("f2.txt","w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	printf("No.of Single Line Comments = %d\n",s);
	printf("No.of Multi Line Comments = %d\n",m);
	}

int yywrap(){
	return 1;
}
