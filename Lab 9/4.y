%{
#include<stdio.h>
int yylex(void);
int yyerror(char *s);
%}
%token id num
%%
T: S{printf("Valid Relational Expression\n");}
;
S : E'='E
| E'<'E
| E'>'E
| E'<''='E
| E'>''='E
| E'=''='E
| E'!''='E
;
E: id
| num
;
%%
int main(){
printf("Enter the Expression: ");
yyparse();
}
int yyerror(char *s){
printf("Invalid\n");
}
