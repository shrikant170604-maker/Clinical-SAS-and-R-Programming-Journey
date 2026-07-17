Day-18
Topic- Character function in SAS
Author- Shrikant Kumar
=====================================================================================================================
COMPBL() Function:-
COMPBL stands for: COMPress BLanks
It is a character function used to clean messy text by reducing multiple consecutive spaces into a single space.

Syntax:
DATA DATA_SET_NAME;
VARIABLE=" I  AM  SHRIKANT   KUMAR   ";
NEW_VARIABLE = COMPBL(TARGET_VARIABLE);
RUN;

Why Do We Need COMPBL()?
The extra spaces make the data inconsistent and difficult to read.
Cleans messy imported data.
Improves readability.
Makes reports look professional.

/* EXAMPLE_1 */
DATA RMB1;
CLEAN1="CLINICAL        DATA        MANAGEMENT        TEAM";
NEW_CL1=COMPBL(CLEAN1);
RUN;

/* EXAMPLE_2 */
DATA RMS2;
CLEAN2="SUBJECT        COMPLETED        PHASE        II        SUCCESSFULLY";
NEW_CL2=COMPBL(CLEAN2);
RUN;

CAT() FUNCTION
CAT stands for: CATenate
(Concatenate means to join or combine strings together.)
It is a character function used to combine two or more character strings into one single string
						OR
The CAT() function concatenates two or more character strings without removing leading or trailing blanks from the arguments.

Syntax:
NEW_VARIABLE = CAT(STRING1, STRING2, STRING3,...);

Why Do We Need CAT()
Instead of displaying them separately, CAT() combines them into one variable.
Supports multiple variables.

/* EXAMPLE_1 */
DATA SAMPLE1;
SET DRUG_DETAILS;
COMBINE1=CAT(NAME,DRUG,VISIT);
RUN;

/* EXAMPLE_2 */
DATA SAMPLE2;
SET DRUG_DETAILS;
COMBINE2=CAT(ID,DRUG,SITE);
RUN;

CATT() FUNCTION:-
CATT stands for: CATenate + Trim Tail
It is a character function used to combine two or more character strings after removing trailing (right-side) blanks from each string.

Syntax:
NEW_VARIABLE = CATT(STRING1, STRING2, STRING3,...);

Why Do We Need CATT()?
Notice the unwanted spaces, It automatically removes the trailing spaces before joining.
Produces cleaner output than CAT().
Simple and efficient.

/* EXAMPLE_1 */
DATA TEST1;
SET EMPLOYEE_DETAILS;
EMP_INFO=CATT(EMP_ID,EMP_NAME);
RUN;

/* EXAMPLE_2 */
DATA TEST2;
SET EMPLOYEE_DETAILS;
EMP_DEPT=CATT(EMP_NAME,DEPARTMENT);
RUN;

CATS() FUNCTION:
CATS stands for: CATenate + Strip Spaces
It is a character function used to combine two or more character strings after removing both leading (left-side) and trailing (right-side) blanks from each string.

Syntax:
NEW_VARIABLE = CATS(STRING1, STRING2, STRING3, ...);

Why Do We Need CATS()?
Removes leading blanks automatically.
Removes trailing blanks automatically.
Produces clean output.
Reduces the need for LEFT() and TRIM().
Widely used in Clinical SAS for IDs and labels.

/* EXAMPLE_1 */
DATA RLTSB1;
SET BOOK_STORE;
BOOK_INFO=CATS(BOOK_ID,TITLE);
RUN;

/* EXAMPLE_2 */
DATA RLTSB2;
SET BOOK_STORE;
AUTHOR_BOOK=CATS(AUTHOR,TITLE);
RUN;

CATX() FUNCTION:-
CATX stands for: CATenate + eXtra Separator
It is a character function used to combine two or more character strings after removing leading and trailing blanks from each string and automatically inserting a delimiter (separator) between them.
Among all the CAT functions, CATX() is the most commonly used in Clinical SAS because it produces clean and readable output.

Syntax:
NEW_VARIABLE = CATX("DELIMITER", STRING1, STRING2, STRING3, ...);

Why Do We Need CATX()?
Removes leading blanks automatically.
Removes trailing blanks automatically.
Automatically inserts a separator.
Makes code shorter and easier to read.
Widely used in Clinical SAS.
Excellent for creating IDs, addresses, labels, and reports.

/* EXAMPLE_1 */
DATA AIR1;
SET AIRPORT_DETAILS;
FLIGHT_ROUTE=CATX("-",SOURCE,DESTINATION);
RUN;

/* EXAMPLE_2 */
DATA AIR2;
SET AIRPORT_DETAILS;
AIRLINE_FLIGHT=CATX("_",AIRLINE,F;IGHT_ID);
RUN;

Today's Key Learning's - 
COMPBL() compresses multiple consecutive spaces into a single space to clean messy text.
CAT() simply joins character strings without removing any leading or trailing spaces.
CATT() joins strings after removing only the trailing (right-side) spaces.
CATS() joins strings after removing both leading and trailing spaces.
CATX() joins strings, removes leading and trailing spaces, and inserts a user-defined separator.
Memory Rule: COMPBL = One Space | CAT = Just Join | CATT = Trim Tail | CATS = Trim Both Ends | CATX = CATS + Separator.


MY PRACTICE EXAMPLES FOR EACH FUNCTION-
===========================================================================
======================================================================
📝 CAT() Practice EXAMPLE -Questions
=======================================================================
EXAMPLE -1

Create a new variable PATIENT_ID by concatenating ID and NAME.

EXAMPLE -2

Create a new variable DRUG_VISIT by concatenating DRUG and VISIT.

EXAMPLE -3

Create a new variable SITE_PATIENT by concatenating SITE and ID.

EXAMPLE -4

Create a new variable NAME_DRUG by concatenating NAME and DRUG.

EXAMPLE -5

Create a new variable VISIT_SITE by concatenating VISIT and SITE.

EXAMPLE -6

Create a new variable PATIENT_INFO by concatenating ID, NAME, and DRUG.

EXAMPLE -7

Create a new variable TRIAL_INFO by concatenating SITE, VISIT, and ID.

EXAMPLE -8

Create a new variable MEDICATION by concatenating DRUG, ID, and NAME.

EXAMPLE -9

Create a new variable PATIENT_VISIT by concatenating NAME and VISIT.

EXAMPLE -10

Create a new variable LOCATION by concatenating SITE and NAME.

EXAMPLE -11

Create a new variable RECORD1 by concatenating ID, NAME, SITE.

EXAMPLE -12

Create a new variable RECORD2 by concatenating ID, DRUG, VISIT.

EXAMPLE -13

Create a new variable RECORD3 by concatenating NAME, DRUG, SITE.

EXAMPLE -14

Create a new variable RECORD4 by concatenating VISIT, DRUG, ID.

EXAMPLE -15

Create a new variable RECORD5 by concatenating SITE, NAME, VISIT.

EXAMPLE -16

Create a new variable DETAILS1 by concatenating NAME, ID, SITE, VISIT.

EXAMPLE -17

Create a new variable DETAILS2 by concatenating DRUG, VISIT, SITE, ID.

EXAMPLE -18

Create a new variable DETAILS3 by concatenating ID, DRUG, NAME, SITE.

EXAMPLE -19

Create a new variable CLINICAL_ID by concatenating SITE, ID, VISIT.

EXAMPLE -20

Create a new variable PATIENT_DRUG by concatenating ID, NAME, DRUG, VISIT

==========================================================================================
📝 CATT() Practice EXAMPLE -Questions
============================================================================================
EXAMPLE -1

Create a new variable EMP_INFO by concatenating EMP_ID and EMP_NAME.

EXAMPLE -2

Create a new variable EMP_DEPT by concatenating EMP_NAME and DEPARTMENT.

EXAMPLE -3

Create a new variable CITY_PROJECT by concatenating CITY and PROJECT.

EXAMPLE -4

Create a new variable EMP_SALARY by concatenating EMP_NAME and SALARY.

EXAMPLE -5

Create a new variable DEPT_PROJECT by concatenating DEPARTMENT and PROJECT.

EXAMPLE -6

Create a new variable EMP_CITY by concatenating EMP_ID, EMP_NAME, and CITY.

EXAMPLE -7

Create a new variable PROJECT_DETAILS by concatenating PROJECT, DEPARTMENT, and CITY.

EXAMPLE -8

Create a new variable EMP_RECORD by concatenating EMP_NAME, EMP_ID, and SALARY.

EXAMPLE -9

Create a new variable LOCATION_INFO by concatenating CITY, EMP_NAME, and PROJECT.

EXAMPLE -10

Create a new variable PAYROLL by concatenating EMP_ID, SALARY, and DEPARTMENT.
EXAMPLE -11

Create a new variable EMPLOYEE_PROFILE by concatenating EMP_ID, EMP_NAME, DEPARTMENT, and CITY.

EXAMPLE -12

Create a new variable PROJECT_ASSIGNMENT by concatenating PROJECT, EMP_NAME, SALARY, and CITY.

EXAMPLE -13

Create a new variable OFFICE_DIRECTORY by concatenating CITY, PROJECT, EMP_ID, and EMP_NAME.

EXAMPLE -14

Create a new variable PAYROLL_DETAILS by concatenating DEPARTMENT, SALARY, PROJECT, and EMP_ID.

EXAMPLE -15

Create a new variable EMPLOYEE_LOCATION by concatenating EMP_NAME, CITY, DEPARTMENT, and PROJECT.

EXAMPLE -16

Create a new variable COMPANY_RECORD by concatenating EMP_ID, EMP_NAME, DEPARTMENT, SALARY, and CITY.

EXAMPLE -17

Create a new variable PROJECT_SUMMARY by concatenating PROJECT, CITY, SALARY, EMP_NAME, and EMP_ID.

EXAMPLE -18

Create a new variable DEPARTMENT_REPORT by concatenating DEPARTMENT, PROJECT, EMP_ID, EMP_NAME, and CITY.

EXAMPLE -19

Create a new variable EMPLOYEE_HISTORY by concatenating EMP_NAME, EMP_ID, CITY, PROJECT, and SALARY.

EXAMPLE -20

Create a new variable ORGANIZATION_PROFILE by concatenating the variables in the following order:

[PROJECT → EMP_ID → DEPARTMENT → EMP_NAME → CITY → SALARY]   using only CATT().

================================================================================================
 📝 CATS() Practice EXAMPLE -Questions
================================================================================================
EXAMPLE -1

Create BOOK_INFO by concatenating BOOK_ID and TITLE.

EXAMPLE -2

Create AUTHOR_BOOK by concatenating AUTHOR and TITLE.

EXAMPLE -3

Create CATEGORY_PRICE by concatenating CATEGORY and PRICE.

EXAMPLE -4

Create BOOK_PUBLISHER by concatenating TITLE and PUBLISHER.

EXAMPLE -5

Create BOOK_COST by concatenating BOOK_ID, TITLE, and PRICE.

EXAMPLE -6

Create AUTHOR_DETAILS by concatenating AUTHOR, CATEGORY, and PUBLISHER.

EXAMPLE -7

Create BOOK_CATEGORY by concatenating TITLE, CATEGORY, and BOOK_ID.

EXAMPLE -8

Create PRICE_DETAILS by concatenating PRICE, TITLE, and AUTHOR.

EXAMPLE -9

Create STORE_RECORD by concatenating BOOK_ID, PUBLISHER, and CATEGORY.

EXAMPLE -10

Create BOOK_AUTHOR_PRICE by concatenating TITLE, AUTHOR, and PRICE.


EXAMPLE -11

Create BOOK_PROFILE by concatenating BOOK_ID, TITLE, AUTHOR, and CATEGORY.

EXAMPLE -12

Create PUBLISHER_RECORD by concatenating PUBLISHER, BOOK_ID, TITLE, and PRICE.

EXAMPLE -13

Create AUTHOR_PROFILE by concatenating AUTHOR, BOOK_ID, CATEGORY, and PUBLISHER.

EXAMPLE -14

Create BOOK_DETAILS by concatenating TITLE, CATEGORY, PRICE, and AUTHOR.

EXAMPLE -15

Create LIBRARY_RECORD by concatenating BOOK_ID, TITLE, PUBLISHER, and CATEGORY.

EXAMPLE -16

Create MASTER_BOOK by concatenating BOOK_ID, TITLE, AUTHOR, CATEGORY, and PRICE.

EXAMPLE -17

Create BOOK_DATABASE by concatenating CATEGORY, TITLE, AUTHOR, PUBLISHER, and PRICE.

EXAMPLE -18

Create BOOK_SUMMARY by concatenating PUBLISHER, BOOK_ID, AUTHOR, TITLE, and CATEGORY.

EXAMPLE -19

Create BOOK_REPORT by concatenating AUTHOR, PRICE, CATEGORY, BOOK_ID, and PUBLISHER.

EXAMPLE -20

Create a new variable FINAL_BOOK_RECORD by concatenating the variables in the following order:

PUBLISHER → BOOK_ID → AUTHOR → TITLE → CATEGORY → PRICE

using only CATS().
=================================================================================================
📝 CATX() Practice EXAMPLE -Questions
================================================================================================
Instruction: Use only CATX().

EXAMPLE -1

Create FLIGHT_ROUTE by concatenating SOURCE and DESTINATION using '-'.

EXAMPLE -2

Create AIRLINE_FLIGHT by concatenating AIRLINE and FLIGHT_ID using '_'.

EXAMPLE -3

Create BOARDING_INFO by concatenating FLIGHT_ID, GATE, and STATUS using ' | '.

EXAMPLE -4

Create TRAVEL_PATH by concatenating SOURCE, DESTINATION, and AIRLINE using ' → '.

EXAMPLE -5

Create FLIGHT_STATUS by concatenating FLIGHT_ID and STATUS using ':'.

EXAMPLE -6

Create AIRPORT_RECORD by concatenating AIRLINE, SOURCE, and DESTINATION using '/'.

EXAMPLE -7

Create FLIGHT_DETAILS by concatenating FLIGHT_ID, AIRLINE, and STATUS using '-'.

EXAMPLE -8

Create GATE_INFORMATION by concatenating GATE, FLIGHT_ID, and AIRLINE using ' | '.

EXAMPLE -9

Create PASSENGER_DISPLAY by concatenating AIRLINE, SOURCE, DESTINATION, and GATE using ' - '.

EXAMPLE -10

Create FLIGHT_TRACKER by concatenating FLIGHT_ID, SOURCE, DESTINATION, and STATUS using ' -> '.

EXAMPLE -11

Create JOURNEY_DETAILS by concatenating AIRLINE, SOURCE, DESTINATION, STATUS using ', '.

EXAMPLE -12

Create TERMINAL_RECORD by concatenating GATE, AIRLINE, FLIGHT_ID, and STATUS using '/'.

EXAMPLE -13

Create AIR_TRAFFIC by concatenating SOURCE, DESTINATION, FLIGHT_ID, and GATE using '-'.

EXAMPLE -14

Create FLIGHT_LOG by concatenating FLIGHT_ID, AIRLINE, SOURCE, DESTINATION, and STATUS using ' | '.

EXAMPLE -15

Create ROUTE_INFORMATION by concatenating SOURCE, DESTINATION, AIRLINE, and FLIGHT_ID using ' => '.


EXAMPLE -16

Create MASTER_FLIGHT_RECORD by concatenating all six variables using ' - '.

EXAMPLE -17

Create FLIGHT_SUMMARY by concatenating STATUS, FLIGHT_ID, AIRLINE, SOURCE, DESTINATION, and GATE using ' / '.

EXAMPLE -18

Create AIRLINE_REPORT by concatenating AIRLINE, STATUS, SOURCE, DESTINATION, and FLIGHT_ID using ' | '.

EXAMPLE -19

Create TRAVEL_HISTORY by concatenating SOURCE, FLIGHT_ID, AIRLINE, GATE, STATUS, and DESTINATION using ' -> '.

EXAMPLE -20

Create a new variable FINAL_FLIGHT_RECORD by concatenating the variables in the following order:

STATUS → AIRLINE → FLIGHT_ID → SOURCE → DESTINATION → GATE

using CATX('#', ...).


#ALL THE SOLUTION OF THESE EXAMPLES ARE IN NEXT .SAS EXTENTION FILE 
