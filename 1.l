%option noyywrap nodefault yylineno case-insensitive
%{
#include<stdio.h>
#include "y.tab.h" 
int count;
%}

%%

[ \t\r]    ;
[\n]       count++;
BIT	return BIT;
int        return INT;
INT1|TINYINT   return TINYINT;
INT2|SMALLINT   return SMALLINT;
MIDDLEINT|MEDIUMINT   return MEDIUMINT;
INT4?|INTEGER   return;
-?[0-9]+   return INTNUM;
INT8|BIGINT   return BIGINT;
REAL   return REAL;
FLOAT8|DOUBLE   return DOUBLE;
FLOAT4?   return FLOAT;
NUMERIC|DEC|DECIMAL return DECIMAL;
TIMESTAMP return TIMESTAMP;
DATETIME return DATETIME;
YEAR return YEAR;
BINARY return BINARY;
CHAR(ACTER)? return CHAR;
VARBINARY return VARBINARY;
BLOB return BLOB;
TINYBLOB return TINYBLOB;
MEDIUMBLOB return MEDIUMBLOB;
LONGBLOB return LONGBLOB;
TEXT return TEXT;
TINYTEXT return TINYTEXT;
LONGTEXT return LONGTEXT;
MEDIUMTEXT return MEDIUMTEXT;
ENUM return ENUM;
UNSIGNED return UNSIGNED;
ZEROFILL return ZEROFILL;
COLLATE return COLLATE;
UNIQUE return UNIQUE;
not	   return NOT;
null	   return NULLX;
set        return SET;
drop       return DROP;
table      return TABLE;
create     return CREATE;
add        return ADD;
column     return COLUMN;
alter      return ALTER;
varchar    return VARCHAR;
date       return DATE;
primary    return PRIMARY;
key        return KEY;
foreign   return FOREIGN;
time       return TIME;
['(']        return LEFT;
[')']        return RIGHT;
[,]        return COMMA;
[;]        return SEMICOLON;
[a-zA-Z][_a-zA-Z0-9]*     return IDENTIFIER;
[\.]       return DOT;
0B[01]+      |
B'[01]+'  |
X'[0-9A-F]+' |  
0X[0-9A-F]+ |
'(\\.|''|[^'\n])*'   |
\"(\\.|\"\"|[^"\n])*\" return STRING;
. ECHO;
%%
