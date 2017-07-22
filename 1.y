%{
#include <stdio.h>
#include<stdlib.h>
int status=0;

FILE *yyin,*yyout;

%}

%token COMMA SEMICOLON IDENTIFIER DOT LEFT RIGHT SET DROP TABLE CREATE INT VARCHAR DATE TIME ADD ALTER COLUMN PRIMARY KEY FOREIGN NOT NULLX BIT TINYINT SMALLINT MEDIUMINT INTEGER BIGINT REAL DOUBLE FLOAT DECIMAL TIMESTAMP DATETIME YEAR CHAR BINARY VARBINARY BLOB TINYBLOB MEDIUMBLOB LONGBLOB TEXT TINYTEXT LONGTEXT MEDIUMTEXT ENUM INTNUM UNSIGNED ZEROFILL COLLATE UNIQUE STRING


%%

st     : CREATE TABLE IDENTIFIER LEFT collist RIGHT SEMICOLON {fprintf(yyout,"VALID!!!");exit(0);};

collist: def
	|
	collist COMMA def
	;

def: PRIMARY KEY LEFT column_list RIGHT
    | KEY LEFT column_list RIGHT
    | IDENTIFIER data_type column_atts
    ;
data_type:
     BIT opt_length
   | TINYINT opt_length opt_uz
   | SMALLINT opt_length opt_uz
   | MEDIUMINT opt_length opt_uz
   | INT opt_length opt_uz
   | INTEGER opt_length opt_uz
   | BIGINT opt_length opt_uz
   | REAL opt_length opt_uz
   | DOUBLE opt_length opt_uz
   | FLOAT opt_length opt_uz
   | DECIMAL opt_length opt_uz
   | DATE
   | TIME
   | TIMESTAMP
   | DATETIME
   | YEAR
   | CHAR opt_length opt_csc
   | VARCHAR LEFT INTNUM RIGHT opt_csc
   | BINARY opt_length
   | VARBINARY LEFT INTNUM RIGHT
   | TINYBLOB
   | BLOB
   | MEDIUMBLOB
   | LONGBLOB
   | TINYTEXT opt_binary opt_csc
   | TEXT opt_binary opt_csc
   | MEDIUMTEXT opt_binary opt_csc
   | LONGTEXT opt_binary opt_csc
   | ENUM LEFT enum_list RIGHT opt_csc
   | SET LEFT enum_list RIGHT opt_csc
   ;

opt_length:
   | LEFT INTNUM LEFT
   | LEFT INTNUM COMMA INTNUM RIGHT
   ;

opt_binary:
   | BINARY
   ;

opt_uz:
   | opt_uz UNSIGNED
   | opt_uz ZEROFILL
   ;

opt_csc:
   | opt_csc CHAR SET STRING
   | opt_csc COLLATE STRING
   ;

enum_list: STRING
   | enum_list ',' STRING
   ;
column_atts: 
    |column_atts NOT NULLX
    | column_atts NULLX
    | column_atts UNIQUE LEFT column_list RIGHT
    | column_atts UNIQUE KEY
    | column_atts PRIMARY KEY
    | column_atts KEY
    ;
column_list: IDENTIFIER
  | column_list COMMA IDENTIFIER
  ;



%%

extern char * yytext;

int main(){
yyin = fopen("input.txt","r");
yyout = fopen("output.txt","w");
yyparse();
}

int yyerror(char *s){
	fprintf(yyout,"INVALID!!!");
}

int yywrap(){
	return 1;
}
