#include <stdio.h>
#include <string.h>

int main(){
    char s[5][10] = {"int","float","char","enum","double"}, a[10];
    int flag = 0;
    printf("Enter the Identifer/Keyword: " );
    scanf("%s", a);
    for(int i = 0; i<5; i++){
    	if(strcmp(s[i], a) == 0){
    	    flag = 1;
    	}
    }
    if(flag == 1)
    	printf("It is a Keyword\n");
    else{
    	int flag1 = 0, flag2 = 0;
    	if((a[0] >= 'a' && a[0] <= 'z') || (a[0] >= 'A' && a[0] <= 'Z') || (a[0] == '_'))
    	    flag1 = 1;
    	if(flag1 == 1){
    	    for(int i = 1; i<strlen(a); i++){
    	    	if(!((a[i] >= 'a' && a[i] <= 'z') || (a[i] >= 'A' && a[i] <= 'Z') || a[i] == '_' || (a[i] >= '0' && a[i] <= '9'))){
    	    	    printf("Invalid Identifier1\n");
    	    	    flag2 = 1;
    	    	    break;
    	    	}
    	    }
    	    if(flag2 == 0)
    	    	printf("Valid Identifier\n");
    	}
    	else
    	    printf("Invalid Identifier2\n");
    }
}
