%{
#include<stdio.h>
int wc,lc,cc,sc;
%}
word[^\n\t]+
line[\n]
space[\t]
%%
{word} {wc++;cc+=yyleng;}
{line} {lc++;cc++;}
{space} {sc++;cc++;}
%%
int main(int argc,char* argv[])
{
if(argc!=2)
  {
    printf("\n usage ./a.out filename\n");
    return 0;
  }
yyin=fopen(argv[1],"r");
yylex();
printf("Number of lines %d\n",lc);
printf("Number of word %d\n",wc);
printf("Number of space %d\n",sc);
printf("Number of character %d\n",cc);
}
