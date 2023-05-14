#include<stdio.h>
#include<string.h>
#include<stdlib.h>
int main(){
    FILE *fp = fopen("input.txt", "r");
    char c;
    c = fgetc(fp);
    int n = (int)c -'0';
    int i;
    char * w[4];
    //FILE *fp = fopen ("my.txt", "r");

    for (i =0; i < n; ++i) {
    	w[i] = malloc (128); 
    	fscanf (fp, "%127s", w[i]);
    }

    for (i =0; i < n; ++i)
        printf ("%s\n",w[i]);
    //do{
      //  if(c == ' ' || c == '$'){
            
        //}
        //l+=c; 
	//c = fgetc(fp);
    //}while(c != EOF);        
    //for(int i = 0; i<n-1; i++)
    	//printf("%s", a);
}
