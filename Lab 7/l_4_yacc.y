// AMAN SHARMA - 21BCE5769
%{
#include<stdio.h>
int yylex(void);
int yyerror(char *s);
int c_a=0;
int c_b=0;
%}
%token A B
%%
S: E {if(c_a == c_b) 
		printf("Valid\n"); 
	else 
		printf("Invalid\n"); 
	return 0;}
E: 
| E A  {c_a++;}
| E B  {c_b++;}
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
