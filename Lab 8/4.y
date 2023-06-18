// AMAN SHARMA - 21BCE5769
%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char *s);
%}
%token A B L
%%
stmt: S L  {printf("Valid String\n"); return 0;}
;
S: B X
;
X: A Y
;
Y: B Z;
Z: B Z | A E
;
E: A F | B Z 
;
F: A F | B Z |
;
%%
int main(){
printf("Enter the String\n");
yyparse();
}
int yyerror(char *s){
printf("Invalid String\n");
exit(0);
}

