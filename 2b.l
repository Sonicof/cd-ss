%{
#include<stdio.h>
int c=0;
%}
%%
[a-zA-Z]*(and|or|but|yet|so)[a-zA-Z]* {c=1;}
.|[\n];
%%
int yywrap(){
	return 1;
}
void main(){
	//yyin = fopen("t1.txt","r");
	printf("Enter the text\n");
	yylex();
	if(c){
		printf("Compound\n");
	}
	else{
		printf("Simple\n");
	}
	
}
