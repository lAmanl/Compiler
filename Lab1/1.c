#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main(){
    char nname[100], oname[100];
    int flag = false;
    printf("enter the new file name: ");
    scanf("%s", nname);
    strcat(nname,".txt");
    printf("enter the file name from which data has to be taken: ");
    scanf("%s", oname);
    strcat(oname,".txt");
    FILE *fp = fopen(nname, "w");
    FILE *fp1 = fopen(oname, "r");
    char c = fgetc(fp1);
    while(c != EOF){
        fputc(c, fp);
        c = fgetc(fp1);
    }
    fclose(fp);
    printf("Do you want to append data in your new file? 1-Yes/0-No");
    scanf("%d", &flag);
    char a[1000];
    getchar();
    if(flag == 1){
        FILE *fp = fopen(nname, "a+");
        printf("Enter you data: ");
    	scanf("%[^\n]s", a);
    	printf("%s",a);
        fputs(a, fp);
    }
    return 0;
}
