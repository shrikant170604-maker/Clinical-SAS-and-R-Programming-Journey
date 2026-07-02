DAY-11
TOPIC -INFILE STATEMENT
AUTHOR- SHRIKANT KUMAR
===============================================================================
Infile Statment :
The INFILE statement tells SAS:
WHERE to find the external data file
HOW to read the data (options)
WHICH records to read (firstobs, obs)
HOW to handle special situations (missover, truncover, etc.)

NOTE: we use the INFILE statement inside a DATA step.

Syntax :
DATA dataset_name;
INFILE 'path/to/your/file.txt' options;
INPUT variable1 variable2 variable3;
RUN;
Syntax breakdown:-
DATA -	Creates a new SAS dataset
INFILE -Specifies the external file location and reading options
INPUT -	Defines variable names and their positions
RUN - Executes the DATA step

FIRSTOBS Option :
FIRSTOBS = n (tells SAS to start reading data from line number n of the file. This is used to skip header rows or ignore beginning lines.)

Syntax
INFILE 'file.txt' FIRSTOBS = n;

/* EXAMPLE 1 */
DATA SAHU.EMPLOYEE_RECORD;
INFILE "/home/u64536648/AI GURU/employee_space_delimited.txt";
INPUT EMP_ID $ NAME $ DEPARTMENT $ SALARY;
RUN;

/* EXAMPLE 2 */
DATA SAHU.MARKS_RECORD;
INFILE "/home/u64536648/AI GURU/students.txt";
INPUT STUD_ID $ NAME $ SUBJECT $ YEAR CGPA;
RUN;

OBS Option :
OBS = n tells SAS to stop reading data at line number n of the file. It reads data UP TO AND INCLUDING line n.

Syntax
INFILE 'file.txt' OBS = n;

/* EXAMPLE 1 */
DATA SAHU.HOSPITAL_XYZ;
INFILE "/home/u64536648/AI GURU/hospitals (1).txt" OBS=4;
INPUT HOSPITAL_ID $ HOSPITAL_NAME $ LOCATION $ CAPACITY RATINGS;
RUN;
 
/* EXAMPLE 2 */
DATA SAHU.FLIGHTS_XYZ;
INFILE "/home/u64536648/AI GURU/flights.txt" OBS=2;
INPUT FLIGHT_ID $ AIRLINE $ FROM $ TO $ PRICE;
RUN;

MISSOVER Option:
MISSOVER tells SAS: "If you reach the end of a line before reading all variables, set remaining variables to MISSING — and do NOT go to the next line"

Syntax
INFILE 'file.txt' MISSOVER;

/* EXAMPLE 1  */
DATA SAHU.ORDER_REPORT;
INFILE "/home/u64536648/AI GURU/orders_missover.txt" MISSOVER;
INPUT ORDER_ID $ NAME $ ITEM $ QTY PRICE;
RUN;

/* EXAMPLE 2  */
DATA SAHU.PHARMACY_REPORT;
INFILE "/home/u64536648/AI GURU/pharmacy_missover.txt" MISSOVER;
INPUT DRUD_ID $ DRUG_NAME $ BATCH_NO $ POWER $ EXPIRY;
RUN;


📌 This is Very Important!
When used together:

FIRSTOBS = n → Starting line to READ
OBS = m → Last line to READ (m must be ≥ n)
