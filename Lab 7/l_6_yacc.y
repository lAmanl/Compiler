%{
#include<stdio.h>
int yylex(void);
int yyerror(char *s);
%}
%token A
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
S:'(' A E ')' F {printf("Valid String");}
 |error {printf("Invalid String");}
 ;
E:'(' A A ')' '*'
 ;
F:'(' A '+' A ')' '*'
 ;
%%

int main(){
	printf("Enter the Expression: ");
	yyparse();
	return 0;
}

int yyerror(char *s){
printf("Invalid Expression\n");
return 0;
}

