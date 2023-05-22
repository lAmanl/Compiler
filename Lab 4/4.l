%{
#include <stdio.h>
#include <ctype.h>
int c=0;
%}

%%
[a-zA-Z]+ {
    int count = 0,uc = 0, lc = 0;
    for (int i = 0; yytext[i] != '\0'; i++) {
	if (isupper(yytext[i])){
	    uc++;
	    count++;
	}
	else if (islower(yytext[i])){
	    lc++;
	    count++;
	}
    }
    if (uc == count || lc == count) {
	c++;
	printf("Valid: %s\n", yytext);
    }
}
\n {return 0;}
. ;
%%
int yywrap(){
return 1;}

int main(){
yylex();
printf("Count: %d\n", c);
return 0;
}
