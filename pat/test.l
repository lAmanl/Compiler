%{
#include <stdio.h>
#include <string.h>
int count = 0;
%}
%%
[a-zA-Z][a-zA-Z0-9]* {
int n = strlen(yytext);
for(int i = 0; i<n; i++){
if(yytext[i] >= '0' && yytext[i] <= '9')
	count++;
}
if(count >=1 && count <= 3)
	printf("Valid String\n");
else
	printf("Invalid String\n");
}
[0-9][a-zA-Z0-9]* {printf("Invalid String\n");}
\t {return 0;}
\n {return 0;}
. {return 0;}
%%

int main(){
yylex();

return 0;
}
int yywrap(){}
