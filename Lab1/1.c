#include <stdio.h>
#include <string.h>
#include <stdbool.h>

int main(){
    int size = 1000;
    char nname[100], oname[100];
    char c = fgetc(fp1);
    int flag = false;
    printf("enter the new file name: ");
    scanf("%s", nname);
    strcat(nname,".txt");
    printf("enter the file name from which data has to be taken: ");
    scanf("%s", oname);
    strcat(oname,".txt");
    FILE *fp = fopen(nname, "w");
    FILE *fp1 = fopen(oname, "r");
    while(c != EOF){
        fputc(c, fp);
        c = fgetc(fp1);
    }
    fclose(fp);
    printf("Do you want to append data in your new file? 1-Yes/0-No");
    scanf("%d", &flag);
    if(flag == 1){
        *fp = fopen(nname, "a+");
        char app[size];
        printf("Enter you data: ");
        scanf("%s" app);
        fputs(app, fp);
    }
    return 0;
}
