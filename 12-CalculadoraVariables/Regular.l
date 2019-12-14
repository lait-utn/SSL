%option noyywrap
%{  
	#include"Parser.tab.h"
	#include<string.h>
	#include<ctype.h> 
	extern YYSTYPE yylval;
%}

%%
[ \t]
"vars"							{ return Vars; }
[A-Za-z] 						{ yylval.id = toupper((int)*strdup(yytext)) - 'A'; return Identifier; }
[0-9]+ 							{ yylval.num = atoi(yytext); return Number;}
"=" 							{ return Assign; }
"+"								{ return Addition; }
"-"								{ return Substraction; }
"*"								{ return Multiplication; }
"("								{ return LPar; }
")"								{ return RPar; }
"/"								{ return Division; }
"\n" 							{ return EndOfExpr; }
.
%%
