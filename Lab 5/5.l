%{
#include <stdio.h>
#include <string.h>
int count = 0;
char word[20];
%}

%%
[a-zA-Z0-9]+	{
    		if(strcmp(yytext, word) == 0)
        		count++;
    		}
.;
%%

int yywrap(){}
int main(){
char a[20];
printf("Enter the file name: ");
scanf("%s", a);
strcat(a,".txt");
yyin = fopen(a,"r");
printf("Enter the word: ");
scanf("%s", word);
yylex();
printf("Frequency of word is: %d\n", count);
return 0;
}
