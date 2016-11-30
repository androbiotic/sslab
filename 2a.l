%{
	#include<stdio.h>
	#include<stdlib.h>
	int oper=0,id=0,b=0;
%}
%%
[+-/*] {oper++;printf("%s is an operator\n",yytext);}
[a-zA-Z0-9]+ {id++;printf("%s is an operand\n",yytext);}
[(] {b++;}
[)] {b--;}
%%
int yywrap()
{return 1;}
int main()
{
	printf("ENter the expression\n");
	yylex();
	if((b==0)&&(oper=id-1))
	{
		printf("%d is an operator\n",oper);
		printf("%d is an operand\n",id);
		exit(0);
		
	}
	else
	{
		printf("Invalid Expression\n");
		
	}
	return(0);
}
