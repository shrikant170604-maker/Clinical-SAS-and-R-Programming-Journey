SCAN() Function:-
Consider SCAN() function as a word picker.
SCAN() extracts a specific word from a string.

Syntax
SCAN(string,word_number,delimiter)
Where,
String-A sentence
Word Number-Which word do you want?
Delimiter-How are words separated?(Space,-/:)

Note: If word number started with negative it means, counting will start from right to left.
Example:
Shrikant-001-RANCHI   [  -1 → RANCHI -2 → 001 -3 → Shrikant   ]

/* EXAMPLE_1 */
DATA UNIVERSITY_DATA;
UNIVERSITY="Ranchi University Jharkhand";
UNIVERSITY_NAME=SCAN(UNIVERSITY,2);
RUN;

/* EXAMPLE_2*/
DATA EXAMPLE28;
LANGUAGE=" I AM LEARNING SAS PROGRAMMING LANGUAGE";
EXATRACT=SCAN(LANGUAGE,-2);
RUN;

SUBSTR() Function:-
Consider SUBSTR() function as a Letter Cutter ✂️
SUBSTR() extracts a specific number of characters from a string starting from a specified position.

Syntax
SUBSTR(string, start, length)
Where,
String-A sentence
Start Position-From which letter should I start?
Length-How many characters should I take?

TYPE_1 Example [To extract specific letter from any variable]

/* EXAMPLE_1 */
DATA INTRO;
NAME="SHRIKANT IS A VERY INTROVERT";
RESULT=SUBSTR(NAME,1,3);
RUN;

TYPE_2 Example [This replaces characters inside an existing string ----> SUBSTR(OLD_VAR,1,3) = "NEW";]

/* EXAMPLE_2 */
DATA INTRO;
NAME="SHRI170604 IS A VERY INTROVERT";
SUBSTR(NAME,7,4)="2026";
RUN;

SCAN() and SUBSTR()
SCAN()	                                                             SUBSTR()
Works on words	                                                Works on characters
Needs delimiters (space, -, /, etc.)	                        Needs character positions
Scan Counts words	                                        Substr Counts letters
Best for separated text	                                        Best for fixed-format text



Key Understandings
SCAN() works on words; SUBSTR() works on character positions.
Delimiter-based data → SCAN(); Fixed-format data → SUBSTR().
SCAN() counts words; SUBSTR() counts characters.
SCAN() extracts; SUBSTR() extracts and replaces.
SUBSTR() starts counting from position 1.

