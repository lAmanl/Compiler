%{
#include <stdio.h>
int count = 0;
%}

%%
[a-z]* {printf("Invalid: %s\n", yytext);}
[A-Z]* {printf("Invalid: %s\n", yytext);}
[a-zA-Z]* {printf("Valid: %s\n", yytext); count++;}
.;
\n {return 0;}
%%

int yywrap(){
return 1;}

int main(){
printf("Enter the words: \n");
yylex();
printf("Count: %d\n", count);
return 0;
}
