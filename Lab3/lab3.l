%{
#include <stdio.h>
int lines = 0, words = 0, chars = 0;
%}
%%
\n {lines++; words++;}
[\t' '] words++;
[A-Za-z] chars++;
.;
%%
int main()
{
yyin = fopen("myfile.txt", "r");
yylex();
printf("The File contains ...");
printf("\n\t%d lines",lines);
printf("\n\t%d words",words);
printf("\n\t%d characters",chars);
}
int yywrap(){}
