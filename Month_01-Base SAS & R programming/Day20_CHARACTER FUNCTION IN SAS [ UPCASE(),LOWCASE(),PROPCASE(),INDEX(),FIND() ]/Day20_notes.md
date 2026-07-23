Day-20
Topic-Character Function in SAS
Author-Shrikant kumar
Help taken by- Chatgpt
=========================================================================================================================================
UPCASE() Function:
UPCASE = "Upper Case Converter"
The UPCASE() function converts all lowercase letters into uppercase while leaving numbers and special characters unchanged.

Syntax
NEW_VARIABLE = UPCASE(TARGET_VARIABLE);

EXAMPLE_1
DATA EMPLOYEE;
NAME = "Shrikant Kumar";
UPPER_NAME = UPCASE(NAME);
RUN;

LOWCASE() Function:
LOWCASE = "Lower Case Converter"
The LOWCASE() function converts all uppercase letters into lowercase.

Syntax
NEW_VARIABLE = LOWCASE(TARGET_VARIABLE);

EXAMPLE_2
DATA ADDRESS;
CITY = "MY HOME TOWN IS IN RANCHI";
NEW_CITY = LOWCASE(CITY);
RUN;

PROPCASE() Function
PROPCASE = "Proper Case" 
PROPCASE() converts the first letter of each word into uppercase and the remaining letters into lowercase.

Syntax
NEW_VARIABLE = PROPCASE(TARGET_VARIABLE);

EXAMPLE_3
DATA EMPLOYEE;
NAME = "sHRIKANT kUMAR";
NEW_NAME = PROPCASE(NAME);
RUN;

INDEX() Function
INDEX = "Position Finder" 🔍
INDEX() returns the starting position of the first occurrence of a substring.
If the text is not found, it returns 0.

Syntax
POSITION = INDEX(STRING, SEARCH_STRING);

Example_4
DATA TEST;
TEXT = "Clinical SAS Programming";
POS = INDEX(TEXT,"SAS");
RUN;

OUTPUT:
TEXT			        POS
Clinical SAS Programming	10

FIND() Function
FIND = "Smart Search" 🔎
FIND() searches for a substring inside another string and returns its starting position.

NOTE: Unlike INDEX(), it supports modifiers such as case-insensitive searching.

Syntax
POSITION = FIND(STRING, SEARCH_STRING,'I');

Example_5
DATA TEST;
TEXT = "Clinical sas Programming";
POS = FIND(TEXT,"SAS",'I');
RUN;
Output :
TEXT	                        POS
Clinical sas Programming	10

Key Learning (6 Lines)
UPCASE() converts all letters to uppercase.
LOWCASE() converts all letters to lowercase.
PROPCASE() capitalizes the first letter of every word.
INDEX() finds the first occurrence of a substring and returns its position.
FIND() also locates substrings but supports powerful modifiers like case-insensitive search.
