//AMAN SHARMA - 21BCE5769
%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char *s);
%}
%token A B L
%%
stmt: S L  { printf("Valid\n"); return 0;};
S: X Y;
X: A X | B A X 
| ;
Y: B	 
| ;
%%
int main(){
printf("Enter the string\n");
yyparse();
}
int yyerror(char *s){
printf("invalid string\n");
exit(0);
}

