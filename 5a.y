%{
#include<stdio.h>
#include<stdlib.h>
%}
%token  N
%left '+' '-'
%left '*' '/'
%%
S:P { 
 	printf("OUTPUT=%d\n",$1);
	exit(0); 
     };
P:P'+'P {$$=$1+$3;}
|P'-'P {$$=$1-$3;}
|P'*'P {$$=$1*$3;}
|P'/'P {if($3==0)
{
printf("DIVIDE BY ZERO.\n");
exit(0);
 }
 else{
 $$=$1/$3;
 }
 }
|'(' P ')' { $$=$2; }
|N { $$=yyval; }
;
%%
int main()
{
printf("Enter an arithmetic expression:\n");
yyparse();
return 0;
}
yyerror()
{
printf("Invalid expression\n");
exit(0);
}
