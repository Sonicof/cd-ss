%{
#include <stdio.h>
int ni = 0, pi = 0, nf = 0, pf = 0;
%}

%%
[-][0-9]+ {ni++; }
[+]?[0-9]+ {pi++;}
[-][0-9]+\.[0-9]+ {nf++;}
[+]?[0-9]+\.[0-9]+ {pf++;}
%%

int yywrap() {
    return 1;
}

int main() {
    yyin=fopen("1b.txt","r");
    yylex();
    printf("\nResults:\n");
    printf("Number of positive integers: %d\n", pi);
    printf("Number of negative integers: %d\n", ni);
    printf("Number of positive fractions: %d\n", pf);
    printf("Number of negative fractions: %d\n", nf);
    return 0;
}
