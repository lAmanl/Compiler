%{
#include <stdio.h>
#include <string.h>
char rep[20], toberep[20];
%}

%%
[a-zA-Z0-9]+ 	{
		if(strcmp(rep, yytext) == 0)
			printf("%s", toberep);	
		else
			printf("%s", yytext);
		}
. 	{printf("%s", yytext);}
%%

int yywrap(){}
int main(){
char a[20];
printf("Enter the file name: ");
scanf("%s", a);
strcat(a,".txt");
yyin = fopen(a,"r");
printf("Enter the word to be replaced: ");
scanf("%s", rep);
printf("Enter the word to be replaced by: ");
scanf("%s", toberep);
yylex();
return 0;
}
