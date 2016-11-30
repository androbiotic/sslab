%{
#include "y.tab.h"
extern int yylval;
%}
%%
[0-9]+  {yylval=atoi(yytext); return N;}
. {return yytext[0];}
%%
