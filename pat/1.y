%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char* msg);
int count = 0;
%}
%token char num NL
%%
S: E NL
E : E T
E: T E
| char
;
T: 
|num {count++;}
;
%%
int main(){
printf("Enter the string\n");
yyparse();
if (count <= 3){
printf("Valid");
} 
return 0;
}
int yyerror(char *msg){
printf("Error: %s\n", msg);
exit(0);
}
