%{
#include<stdio.h>
int count=0;
%}
%%
("int "|"float "|"char "|"long int "|"short int ") { int ch;
ch=input();
	while(1)
	{
		if(ch==',')
			count++;
		else if(ch==';')
			break;
		ch=input();
	}
	count++;
}
%%

int main(int argc,char *argv[])
{
	if(argc<=3)
	{
		yyin=fopen(argv[1],"r");
		yylex();
		printf("\n Number of ids=%d",count);
	}
}
