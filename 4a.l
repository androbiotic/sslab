%{
	#include "y.tab.h"
%}
%%
[a-zA-Z]+ {return ALPHA;}
[0-9]+ {return NUMBER;}
. {return yytext[0];}
%%
