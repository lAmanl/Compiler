#include <stdio.h>

int main(){
    int words = 0, ch = 0, lines = 0;
    FILE *fp = fopen("test.txt","r");
    char a;
    while((a = getc(fp)) != EOF){
    	if((a >= 'a' && a<= 'z') || (a>='A' && a<='Z') || (a>='!' && a<='@'))
    	    ch++;
    	else if(a == ' ' || a == '\n')
    	    words++;
    	if(a == '\n')
    	    lines++;
    }
    printf("Char: %d\nWords: %d\nLines: %d\n", ch, words, lines);
    return 0;
}
