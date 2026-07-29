Day-22
Topic- character function in SAS
Author- Shrikant kumar
=======================================================================================

1.INDEXW function
INDEXW is a SAS character function used to search for a word within a character string.
It returns the starting position of the first occurrence of the specified word.

The important idea is:
INDEXW searches for a complete word, not just a sequence of characters.

Syntax
INDEXW(string, word)

/* EXAMPLE-1 */
DATA Q1;
SET PATIENTS;
POSITION=INDEXW(COMMENT,"stable");
RUN;

/* EXAMPLE-2 */
DATA Q2;
SET PATIENTS;
FEVER_POS=INDEXW(COMMENT,"fever");
RUN;

OUTPUT : POSITION-12 , FEVER_POS-18

2.FINDW Function
FINDW is a SAS character function used to search for a specific word within a character string.

It returns the starting position of the first occurrence of that word.
That's intentional — FINDW and INDEXW are closely related, but FINDW gives you additional control through optional arguments.

Syntax
FINDW(string, word)
The optional arguments are where FINDW becomes more powerful.

FINDW(string,word,"i")
The "i" modifier tells SAS to perform the search without considering case.

FINDW and Multiple Occurrences
Suppose:
DrugA DrugB DrugA
There are two occurrences of DrugA.
A basic search finds the first occurrence.
The starting-position argument can be used when you want to search from a later point.

3.STRIP Function
Returns the argument with all leading and trailing blanks removed. It does NOT remove spaces in the middle of the string.

Syntax
STRIP(String)

Example-1
DATA strip_example;
name1 =    Alice   ;
name2 =    Bob;
clean_name1 = STRIP(name1);
clean_name2 = STRIP(name2);
RUN;

OUTPUT : Alice, Bob

4.TRIM Function
Returns the argument with all trailing blanks removed. Leading spaces are preserved. Commonly used before concatenation operations.

Syntax
TRIM(string)

Example-1
DATA TEST;
NAME = "SHRIKANT KUMAR   ";
NEW_NAME = TRIM(NAME);
PUT NEW_NAME=;
RUN;

OUTPUT: SHRIKANT KUMAR

5.LEFT and RIGHT Functions in SAS

LEFT(string) — Left-aligns a character string by moving leading blanks to trailing blanks within the same character length.

RIGHT(string) — Right-aligns a character string by moving trailing blanks to leading blanks within the same character length.

Example-1
DATA TEST;
NAME = "       RAHUL";
NEW_NAME = LEFT(NAME);
RUN;

Example-2
DATA TEST;
NAME = "RAHUL";
NEW_NAME = RIGHT(NAME);
RUN;


6.LENGTH Function :-

counts how many characters are in a string, NOT counting trailing spaces at the end.

Syntax
LENGTH(string)

Example 1
DATA TEST;
NAME = "RAHUL    ";
X = LENGTH(NAME);
RUN;

OUTPUT: X=5

7.LENGTHC Function :-
Returns the complete length of a character string, including trailing blanks. The 'C' stands for Complete.

Syntax
LENGTHC(string)

Example 1
DATA TEST2;
WORD1 = "SHRIKANT    ";
WORD2= "I AM A BOY   ";
lenc1 = LENGTHC(word1);
lenc2 = LENGTHC(word2);
RUN;

OUTPUT : 12 , 13

8.TRANWRD Function :-
TRANWRD is a SAS character function used to replace one word or character string with another string.

Syntax
TRANWRD(source, from, to)
source → original character string
from → text you want to find
to → replacement text

EXAMPLE-1
DATA TEST;
NAME = "RAHUL KUMAR";
NEW_NAME = TRANWRD(NAME,"KUMAR","SINGH");
RUN;

OUTPUT: NEW_NAME-RAHUL SINGH


9.TRANSLATE Function
TRANSLATE is a SAS character function used to replace individual characters with other characters.

The most important idea is:

TRANSLATE works character-by-character, not word-by-word.

Syntax
TRANSLATE(source, to, from)
SOURCE → original value
TO     → replacement characters
FROM   → characters to be replaced

EXAMPLE-1
DATA TEST;
CODE="LAB-001";
NEW_CODE=TRANSLATE(CODE,"_","-");
RUN;

Quick Memory Card 🧠
Function	One Line Definition
INDEXW	👉 Find position of exact whole word
FINDW	👉 Find position with extra options
STRIP	👉 Remove spaces from BOTH sides
TRIM	👉 Remove spaces from RIGHT only
LEFT	👉 Move text to LEFT side
RIGHT	👉 Move text to RIGHT side
LENGTH	👉 Count characters IGNORE end spaces
LENGTHC	👉 Count ALL characters with end spaces
TRANWRD	👉 Replace WORDS in text
TRANSLATE	👉 Replace individual LETTERS in text
