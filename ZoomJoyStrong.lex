%{
#include <stdio.h>
int num_lines = 1;
%}
%%
[0-9]\.[0-9]	{printf("FLOAT \n");}
[0-9]		{printf("INT \n");}
(SET_COLOR)	{printf("SET_COLOR \n");}
(RECTANGLE)	{printf("RECTANGLE \n");}
(CIRCLE)	{printf("CIRCLE \n");}
(LINE)		{printf("LINE \n");}
(POINT)		{printf("POINT \n");}
(;)		{printf("END_STATEMENT \n");}
(END)		{printf("END \n");}
\n		++num_lines;
\t|\s|\n	;
.	{printf("INCORRECT INPUT AT LINE %d\n", num_lines);}
	
%%

int main(int argc, char **argv){
	yylex();
	return 0;
}
