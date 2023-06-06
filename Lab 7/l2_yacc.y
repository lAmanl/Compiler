%{
#include <stdio.h>
int yylex(void);
int yyerror(char *s);
%}

%token ID
%left '+' '-'
%left '*' '/'

%%
E: T{
	printf("Valid Expression");
	return 0;
}
T: 
	T'+'T
	|T'-'T
	|T'*'T
	|T'/'T
	|'('T')'
	|ID
%%
int main(){
printf("Enter the Expression\n");
yyparse();
}
int yyerror(char* s){
printf("\nExpression is Invalid\n");
}
