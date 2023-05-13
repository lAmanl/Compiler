#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main(){
    char nname[100], oname[100];
    int flag = false;
    int flag1;
    printf("Enter 1- read, 2-write and 3-append: ");
    scanf("%d", &flag1);
    if(flag1 == 1){
    	char c, file1[100];
    	printf("Enter the name of file you want to read: ");
	scanf("%s", file1);
	strcat(file1, ".txt");
    	FILE *fp = fopen(file1, "r");
    	while((c = fgetc(fp))!= EOF){
    		printf("%c", c);
    	}
    }
    else if(flag1 == 2){
    	char file1[100], data[1000];
    	printf("Enter the name of file you want to write to: ");
	scanf("%s", file1);
	printf("Enter data to be written to the file: ");
	getchar();
	scanf("%[^\n]s", data);
	strcat(file1, ".txt");
	FILE *fp = fopen(file1, "w");
	fputs(data, fp);
    }
    else if(flag1 == 3){
    	char file1[100];
    	printf("Enter the name of file you want to append to: ");
    	scanf("%s", file1);
    	char a[1000];
    	getchar();
    	strcat(file1, ".txt");
	FILE *fp = fopen(file1, "a+");
        printf("Enter you data: ");
    	scanf("%[^\n]s", a);
    	fputc('\n', fp);
        fputs(a, fp);
    }
    else{
    	printf("Exiting the program\n");
    }   
    return 0;
}
