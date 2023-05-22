%{
#include <stdio.h>
int count = 0;
%}

%%
[a-zA-Z]+ {
	int c= 0;
	for(int i = 0; yytext[i] != '\0'; i++){
	    if(yytext[i] == 't' || yytext[i] == 'T')
	    	c++;
	}
	if(c == 3 || c == 1){
	    count++;
	    printf("Words with exactly 3 or 1 t's or T's: %s\n", yytext);
	}
}
\n {return 0;}
%%

int yywrap(){return 1;};

int main(){
yylex();
printf("Count: %d\n", count);
return 0;
}
