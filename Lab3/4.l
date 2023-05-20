%{
#include <stdio.h>
%}

%%
[a-z]* {printf("Invalid\n");}
[A-Z]* {printf("Invalid\n");}
[a-zA-Z]* {printf("Valid\n");}
.;
%%

int yywrap(){
return 1;}

int main(){
printf("Enter the words: \n");
yylex();
return 0;
}
