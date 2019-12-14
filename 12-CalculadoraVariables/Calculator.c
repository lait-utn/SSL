#include<stdio.h>
#include"Parser.tab.h"
#include"lex.yy.c"

int main()
{
    yyparse();
}