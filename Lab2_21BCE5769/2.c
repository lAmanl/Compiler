#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(){
    FILE *fp = fopen("input.txt", "r");
    char c = fgetc(fp);
    int n = (int) c - '0';
	c = fgetc(fp);
    char s[5][10] = {"int","float","char","enum","double"};
    int i;
    char * w[n];

    for (int i =0; i < n; ++i) {
    	w[i] = malloc (128); 
    	fscanf (fp, "%127s", w[i]);
    }

	for(int q = 0; q<n; q++){
		int flag = 0;
		// printf("%s", w[q]);
		for(int i = 0; i<5; i++){
			if(strcmp(s[i], w[q]) == 0){
				flag = 1;
			}
		}
		if(flag == 1)
			printf("%s is a Keyword\n", w[q]);
		else{
			int flag1 = 0, flag2 = 0;
			if((w[q][0] >= 'a' && w[q][0] <= 'z') || (w[q][0] >= 'A' && w[q][0] <= 'Z') || (w[q][0] == '_'))
				flag1 = 1;
			if(flag1 == 1){
				for(int i = 1; i<strlen(w[q]); i++){
					if(!((w[q][i] >= 'a' && w[q][i] <= 'z') || (w[q][i] >= 'A' && w[q][i] <= 'Z') || w[q][i] == '_' || (w[q][i] >= '0' && w[q][i] <= '9'))){
						printf("%s is a Invalid Identifier2\n", w[q]);
						flag2 = 1;
						break;
					}
				}
				if(flag2 == 0)
					printf("%s is a Valid Identifier\n", w[q]);
			}
			else
				printf("%s is a Invalid Identifier1\n", w[q]);
		}
	}
}
