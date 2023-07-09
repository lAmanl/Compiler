%{
#include <stdio.h>
#include <math.h>
int yylex();
int yyerror(char *s);
int m1 = 0;
int m2 = 1;
%}
%token ONE ZERO
%%
S: E {printf("In Decimal: %f\n",$1);}
;
E: A {$$=$1;}
| A '.' B {$$=$1+$3;}
;
A: {$$=0.0;}
| ONE A {$$=$1+1.0*pow(2,m1); m1++;}
| ZERO A {$$=$2; m1++;}
;
B: {$$=0.0;}
| B ONE {$$=$1+1.0/pow(2,m2); m2++;}
| B ZERO {$$=$1; m2++;}
;
%%
int main() {
printf("Enter the Fractional Binary number: ");
yyparse();
}
int yyerror(char *s) {
printf("Invalid\n");
}
