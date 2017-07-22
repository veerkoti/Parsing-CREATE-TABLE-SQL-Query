/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    COMMA = 258,
    SEMICOLON = 259,
    IDENTIFIER = 260,
    DOT = 261,
    LEFT = 262,
    RIGHT = 263,
    SET = 264,
    DROP = 265,
    TABLE = 266,
    CREATE = 267,
    INT = 268,
    VARCHAR = 269,
    DATE = 270,
    TIME = 271,
    ADD = 272,
    ALTER = 273,
    COLUMN = 274,
    PRIMARY = 275,
    KEY = 276,
    FOREIGN = 277,
    NOT = 278,
    NULLX = 279,
    BIT = 280,
    TINYINT = 281,
    SMALLINT = 282,
    MEDIUMINT = 283,
    INTEGER = 284,
    BIGINT = 285,
    REAL = 286,
    DOUBLE = 287,
    FLOAT = 288,
    DECIMAL = 289,
    TIMESTAMP = 290,
    DATETIME = 291,
    YEAR = 292,
    CHAR = 293,
    BINARY = 294,
    VARBINARY = 295,
    BLOB = 296,
    TINYBLOB = 297,
    MEDIUMBLOB = 298,
    LONGBLOB = 299,
    TEXT = 300,
    TINYTEXT = 301,
    LONGTEXT = 302,
    MEDIUMTEXT = 303,
    ENUM = 304,
    INTNUM = 305,
    UNSIGNED = 306,
    ZEROFILL = 307,
    COLLATE = 308,
    UNIQUE = 309,
    STRING = 310
  };
#endif
/* Tokens.  */
#define COMMA 258
#define SEMICOLON 259
#define IDENTIFIER 260
#define DOT 261
#define LEFT 262
#define RIGHT 263
#define SET 264
#define DROP 265
#define TABLE 266
#define CREATE 267
#define INT 268
#define VARCHAR 269
#define DATE 270
#define TIME 271
#define ADD 272
#define ALTER 273
#define COLUMN 274
#define PRIMARY 275
#define KEY 276
#define FOREIGN 277
#define NOT 278
#define NULLX 279
#define BIT 280
#define TINYINT 281
#define SMALLINT 282
#define MEDIUMINT 283
#define INTEGER 284
#define BIGINT 285
#define REAL 286
#define DOUBLE 287
#define FLOAT 288
#define DECIMAL 289
#define TIMESTAMP 290
#define DATETIME 291
#define YEAR 292
#define CHAR 293
#define BINARY 294
#define VARBINARY 295
#define BLOB 296
#define TINYBLOB 297
#define MEDIUMBLOB 298
#define LONGBLOB 299
#define TEXT 300
#define TINYTEXT 301
#define LONGTEXT 302
#define MEDIUMTEXT 303
#define ENUM 304
#define INTNUM 305
#define UNSIGNED 306
#define ZEROFILL 307
#define COLLATE 308
#define UNIQUE 309
#define STRING 310

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
