// AMAN SHARMA - 21BCE5769
%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char *s);
%}
%token A N
%%
stmt: S {printf("Valid\n"); return 0; }
;
S : E'='E
| E'<'E
| E'>'E
| E'<''='E
| E'>''='E
| E'=''='E
| E'!''='E
;
E : A
| N
;
%%
int main(){
printf("Enter the Expression\n");
yyparse();
}
int yyerror(char *s){
printf("Invalid\n");
exit(0);
}

