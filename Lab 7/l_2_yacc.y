// AMAN SHARMA - 21BCE5769
%{
#include <stdio.h>
int yylex(void);
int yyerror(char* s);
int c = 0;
%}

%token STR
%left 'a' 'b'
%%
S: A {	if(c%2==0) 
		printf("Valid\n"); 
	else 
		printf("Invalid\n"); 
	return 0;};
A: A 'a' {c++;} A
| A 'b' A
| 'a' {cS++;}
| 'b'
;
%%

int main(){
printf("\nEnter the string:\n");
yyparse();
return 0;
}
int yyerror(char* s){
printf("\n Invalid\n");
}
