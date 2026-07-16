DAY-17
Topic-CHARACTER FUNCTIONS IN SAS
Author- Shrikant Kumar
=================================================================
Assignment Statement:-
An Assignment Statement is used to put a value into a variable.

Syntax:
DATA DATASET_NAME;
vARIABLE NAME = VALUE(Character, numeric);
RUN;

Example_1
DATA EXAMPLE_1;
NAME="MY NAME IS SHRIKANT";
RUN;

Character vs Numeric Assignment

Character values ------> Need quotes
Example : City="Ranchi";

Numeric values ------> No quotes.
Example : Age=22;

COMPRESS Function:-
COMPRESS() removes specified characters or groups of characters from a string with advance modifiers

Syntax:
DATA DATASET_NAME;
NEWVAR=COMPRESS(Target_Variable,Modifiers);
Run;

Example_1
DATA SAMPLE_1;
NAME="Shri kant";
NEW_NAME=compress(Name);
RUN;

LIST OF MODIFIERS NEED TO KNOW
Modifier        Purpose
D & d	       Remove Digits
A & a	       Remove Alphabets
P & p	       Remove Punctuation
I & i	       Insensitive Ignore Case
K & k	       Keep Instead of Remove

Modifier_1 
[D & d ---> Remove Digits]

Example_1
DATA SAMPLE_2;
NAME="Shrikant123";
NEW_D=COMPRESS(NAME," ","D");
RUN;

Modifier_2
[A & a ---> Remove Alphabets]

Example_2
DATA SAMPLE_2;
ID="SUB001";
NEW_A=COMPRESS(NAME," ","A");
RUN;

Modifier_3
[P & p ---> Remove Punctuation]

Example_3
DATA SAMPLE_3;
INTRO="    MY NAME IS SHRIKANT KUMAR 256 #! ";
NEW_P=COMPRESS(INTRO," ","P");
RUN;

Modifier_4
[I & i ---> Insensitive Ignore Case]

Example_4
DATA SAMPLE_4;
INTRO="    MY NAME IS SHRIKANT KUMAR 256 #! ";
NEW_P=COMPRESS(INTRO," ","I");
RUN;

Modifier_5
[K & k ---> Keep Instead of Remove]

Example_5
DATA SAMPLE_5;
INTRO= "    MY NAME IS SHRIKANT AND MY ID IS 0007   ";
NEW_K= COMPRESS(INTRO," ","KD");
RUN;

Example_6
DATA SAMPLE_6;
INTRO= "    MY NAME IS SHRIKANT AND MY ID IS 0007   ";
NEW_K= COMPRESS(INTRO," ","KA");
RUN;

Memory Trick
Assignment Statement = Give a value to a variable.
COMPRESS() = Clean the string by removing unwanted characters.
Modifiers: A–Alphabets, D–Digits, P–Punctuation, S–Spaces, I–Ignore Case, K–Keep.
Golden Rule: Without K = Remove | With K = Keep.


