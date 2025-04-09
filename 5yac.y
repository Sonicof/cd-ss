%{
#include <stdio.h>
#include <stdlib.h>
%}
%token L D
%%
var:L E {printf("Valid variable \n"); exit(0);}
E: E L;
|E D;
|;
%% 
int yyerror() {
    printf("error\n");
    exit(0);
}
int main() {
    printf("Enter the variable:\n");
    yyparse();
    return 0;
}
