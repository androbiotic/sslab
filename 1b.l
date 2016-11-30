%{
#include<stdio.h>
int c=0;
%}
%%
[/][*][^"*/"]*[*][/] {c++;}
[/][/][a-zA-Z0-9]*[^\n] {c++;}
[a-zA-Z0-9] {fprintf(yyout,"%s",yytext);}
%%
int main(int argc,char *argv[])
{
	if(argc>=3)
	{
		yyin=fopen(argv[1],"r");
		yyout=fopen(argv[2],"w");
		yylex();
		printf("\nNo of comment lines=%d\n",c);
	}
	return 0;
}
