Day-12
Topic- INFILE STATEMENT
Author- Shrikant kumar 
=========================================================================================
DSD Option:-
DSD tells SAS three important things:
1.Comma is the delimiter.
2.Two delimiters together mean a missing value.
3.Text inside double quotes is treated as a single value, even if it contains spaces or commas.

/* EXAMPLE 1 */
DATA SHRIKANT.BOOKSLIST;
INFILE "/home/u64536648/PRACTICE INFILE DATASET/books_dataset_comma.txt" DSD;
INPUT BOOK_ID $ TITLE $ AUTHOR $ TYPE $ YEAR;
RUN;

/* EXAMPLE 2 */
DATA SHRIKANT.COSTUMER_LIST;
INFILE "/home/u64536648/PRACTICE INFILE DATASET/customers_dataset_comma.txt" DSD;
INPUT COSTUMER_ID $ NAME $ STATE $ GENDER $ AGE;
RUN;

DLM = DELIMITER:-
Both DELIMITER= and DLM= are identical — DLM is just the abbreviated version.

Syntax:
INFILE 'file.txt' DLM = 'character';

				Character
	___________________________|____________________________________
       | 								|
 Single Character Delimiters				     Multiple Delimiters
Example:						   Example:
 DLM = ',' ,DLM = '|' , DLM = ';'			     DLM = ',|~#'

/* EXAMPLE 1 */
DATA SHRIKANT.COURIOR_RECORD;
INFILE "/home/u64536648/DLM DATA SET/courier_unknown.txt" DLM='~';
INPUT TRACKING_ID $ SOURCE $ FROM $ STATUS $ RATINGS;
RUN;

/* EXAMPLE 2 */
DATA SHRIKANT.ORDER_LIST;
INFILE "/home/u64536648/DLM DATA SET/ORDER_DATA.txt" DLM=',|;~';
INPUT ORDER_ID $ ITEM $ TYPE $ STATUS $ LOCATION $;
RUN;

TRUNCOVER Option:-
TRUNCOVER says:
Don't look at the next line.
Whatever is available on this line, take it. Anything missing stays blank.

Syntax:
INFILE 'file.txt' TRUNCOVER;

/* EXAMPLE 1 */
DATA SHRIKANT.EMPLOYEE_T;
INFILE "/home/u64536648/DLM DATA SET/EMPLOYEE TRUN.txt" DLM=',' TRUNCOVER;
INPUT ID NAME $ DEPARTMENT $ STATE $ SALARY;
RUN;

/* EXAMPLE 2 */
DATA SHRIKANT.STUDENT_T;
INFILE "/home/u64536648/DLM DATA SET/TRUNCOVER FLOWOVER/STUDENT_TRUN.txt" DLM=',' TRUNCOVER;
INPUT STUDENT_ID $ NAME $ COURSE $ YEAR GRADE $;
RUN;

FLOWOVER Option:-
FLOWOVER says: If SAS reaches the end of a line and still needs more values, it automatically flows OVER to the next line to get remaining values.

Syntax:
INFILE 'file.txt' FLOWOVER;

STOPOVER Option:-
STOPOVER tells SAS: If a record doesn't have all the values I need, stop the DATA step immediately and don't read any more records.

Syntax:
INFILE 'file.txt' STOPOVER;

/* EXAMPLE 1 */
DATA SHRIKANT.BOOKS_LIST;
INFILE "/home/u64536648/DLM DATA SET/FLOWOVER DATASET/flowover_books_02.txt" STOPOVER;
INPUT BOOK_ID $ NAME $ PRICE;
RUN;

/* EXAMPLE 2 */
DATA SHRIKANT.CLINIC_RECORD;
INFILE "/home/u64536648/DLM DATA SET/FLOWOVER DATASET/flowover_clinic_01.txt" STOPOVER;
INPUT CLINIC_ID $ NAME $ CITY $ ROOM_No STATUS $;
RUN;

SCANOVER Option:-
SCANOVER tells SAS: Search the current record for a specific word. When you find it, start reading the values that come after it.

Syntax:
INFILE 'file.txt' SCANOVER;

Understanding SCANOVER with @'string' EXAMPLES-
/* EXAMPLE 1 */
DATA SHRIKANT.SCAN15;
INFILE "/home/u64536648/PRACTICE INFILE DATASET/hospitals_dataset_comma.txt" SCANOVER;
INPUT @ 'RANCHI' BEDS RATINGS;
RUN;

/* EXAMPLE 2 */
DATA SHRIKANT.SCAN16;
INFILE "/home/u64536648/PRACTICE INFILE DATASET/movies_dataset_comma.txt" SCANOVER;
INPUT @'MARATHI'RATINGS;
RUN;
Easy Trick to Remember :-
DLM	Separate the data.
DSD	Protect missing data.
FLOWOVER	Continue to the next line.
MISSOVER	Leave it missing.
TRUNCOVER	Keep what's available.
STOPOVER	Stop immediately.
SCANOVER	Search first, read later.

