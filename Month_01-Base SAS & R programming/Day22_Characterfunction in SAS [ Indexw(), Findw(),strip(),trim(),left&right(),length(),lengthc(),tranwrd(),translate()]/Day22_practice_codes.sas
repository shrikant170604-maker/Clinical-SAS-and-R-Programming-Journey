For INDEXW, let's use only 5 observations.

Common Dataset
DATA PATIENTS;
    INPUT SUBJECT $ COMMENT $50.;
    DATALINES;
SUB001 Patient is stable
SUB002 Patient has fever
SUB003 Patient received DrugA
SUB004 Patient is unstable
SUB005 Patient received DrugB
;
RUN;
INDEXW — 5 Questions
Q1 — Basic

The clinical team wants to know where the word stable starts in each patient's comment.

Create:

position

If the word is not present, SAS should return its normal result.

Q2 — Search Another Word

The safety team wants to know where the word fever starts in each patient's comment.

Create:

fever_pos
Q3 — Treatment Search

The clinical team wants to find where DrugA starts in the treatment comment.

Create:

drug_pos
Q4 — Case Difference

The dataset contains:

Patient is stable

The clinical team asks you to search for:

STABLE

Create:

position

Do not change the original COMMENT variable.

Think about what you need to do so that the search works.

Q5 — Complete Word 🔥

Now the team wants to search for the word:

stable

But they specifically want to make sure that stable inside another word such as unstable is not treated as the word stable.

Create:

position

Use the same dataset.
=========================================================================================================================================================================
FINDW — Questions
==========================================================================================================================================================================
Q1 — Basic Search

The clinical team wants to know the position where the word DrugA starts in each patient's note.

Create:

drug_pos
Q2 — Case Sensitivity

The data contains DRUGA in one observation.

Find the position of DrugA regardless of uppercase/lowercase differences.

Create:

drug_pos

Do not change the original NOTE variable.

Q3 — Fever

The safety team wants to find the position where the word fever starts.

Create:

fever_pos

If fever isn't present, let SAS give its normal result.

Q4 — Starting Position

For the following observation:

SUB106 Patient received DrugA today

the programming team wants to search for DrugA, but the search should begin from position 20.

Create:

drug_pos

Think about which part of the syntax allows you to specify where the search begins.

Q5 — Combination 🔥

The clinical team wants to find the position of DrugA, regardless of capitalization.

The search must:

treat DrugA and DRUGA as the same word
search for the complete word
return the position where it is found

=========================================================================================================================================================================
STRIP — Questions
==========================================================================================================================================================================

Common Dataset
DATA CLINICAL;
INPUT SUBJECT $10. PATIENT_NAME $30. TREATMENT $15. SITE $20. STATUS $15.;
DATALINES;
SUB001    shrikant     kumar     DrugA     Pune        Completed
SUB002  JOHN      SMITH          DrugB     Mumbai      Ongoing
SUB003   rAHUL    sINGH         DrugA      Delhi       Completed
SUB004 PRIYA       SHARMA       DrugC      Pune        Ongoing
SUB005     AMIT    PATEL        DrugB      Chennai     Completed
SUB006 NEHA       KUMAR         DrugA      Mumbai      Ongoing
;
RUN;
Scenario-Based Questions
Q1 — Patient Name Cleaning

The clinical database contains unnecessary spaces around patient names.

Create a new variable CLEAN_NAME where the leading and trailing spaces are removed from PATIENT_NAME.

Q2 — Treatment Report

The data manager wants a treatment report containing the patient name and treatment in this format:

shrikant     kumar-DrugA
JOHN      SMITH-DrugB

Create a new variable PATIENT_TREATMENT.

Important: There should be no unwanted spaces before or after the patient name or treatment.

Q3 — Site and Status

The clinical team wants to combine SITE and STATUS into one variable called SITE_STATUS.

Required format:

Pune-Completed
Mumbai-Ongoing
Delhi-Completed

Make sure unwanted spaces don't appear around the values.

Q4 — Patient Identification

Create a new variable PATIENT_ID by combining:

SUBJECT
PATIENT_NAME

The required format is:

SUB001-shrikant     kumar
SUB002-JOHN      SMITH
SUB003-rAHUL    sINGH

The beginning and ending spaces of the patient name must not appear in the final result.

Q5 — 🔥 Clinical Programming Challenge

Create a variable called FINAL_RECORD containing:

SUB001 | Shrikant Kumar | DrugA | Pune | Completed
SUB002 | John Smith | DrugB | Mumbai | Ongoing
SUB003 | Rahul Singh | DrugA | Delhi | Completed

Requirements:

Remove unwanted spaces around each value.
Convert patient names to Proper Case.
Combine all 5 pieces of information using |.
There must be exactly one space on each side of |.
Do not modify the original variables.

=========================================================================================================================================================================
TRIM — Questions
==========================================================================================================================================================================

DATA EMPLOYEE;
INPUT EMP_ID $10. EMP_NAME $20. DEPARTMENT $15. LOCATION $15. STATUS $12.;
DATALINES;
E101 Ramesh       Finance       Pune        Active
E102 Sneha        Research      Mumbai      Active
E103 Arjun        Safety        Delhi       Inactive
E104 Kavya        Programming   Hyderabad   Active
E105 Rohit        Data          Chennai     Active
E106 Anjali       Quality       Bengaluru   Inactive
;
RUN;
Practice Questions
Q1 — Employee Name

Create a new variable CLEAN_NAME from EMP_NAME.

The new variable should contain the employee name without unnecessary blanks at the end.

Q2 — Employee Department

The HR team wants a new variable called EMP_DEPT in this format:

E101-Finance
E102-Research
E103-Safety
E104-Programming

Create EMP_DEPT using EMP_ID and DEPARTMENT.

There should be no unnecessary blanks between the department and -.

Q3 — Employee Location

Create a new variable called EMP_LOCATION:

E101:Pune
E102:Mumbai
E103:Delhi
E104:Hyderabad

Use EMP_ID and LOCATION.

The location must not carry unnecessary trailing blanks into the result.

Q4 — Employee Status

Create:

Ramesh - Active
Sneha - Active
Arjun - Inactive
Kavya - Active

Store the result in:

EMP_STATUS

There should be exactly one space before and after -.

Q5 — 🔥 Exam-Level Challenge

Create a variable called:

EMP_RECORD

Expected format:

E101|Ramesh|Finance|Pune|Active
E102|Sneha|Research|Mumbai|Active
E103|Arjun|Safety|Delhi|Inactive
E104|Kavya|Programming|Hyderabad|Active
Rules
Combine EMP_ID, EMP_NAME, DEPARTMENT, LOCATION, and STATUS.
Use | as the separator.
No unwanted blanks should appear before |.
Do not modify the original variables.
Use the concept you are practicing now.

=========================================================================================================================================================================
LEFT & RIGHT FUNCTION — Questions
==========================================================================================================================================================================


Dataset
DATA STAFF;
INPUT STAFF_ID $10. STAFF_NAME $20. ROLE $15. BRANCH $15.;
DATALINES;
S101       Amit        Analyst       Pune
S102       Neha        Manager       Mumbai
S103       Vikram      Programmer    Delhi
S104       Pooja       Tester        Chennai
S105       Karan       Developer     Hyderabad
S106       Meena       Lead          Kolkata
;
RUN;
Practice Questions
Q1 — Name Alignment

The staff names are currently stored toward the right side of their allocated character length.

Create:

STAFF_NAME_LEFT

Move each STAFF_NAME value toward the left side of its allocated length.

Q2 — Role Alignment

The company wants all job roles displayed toward the right side of their allocated length.

Create:

ROLE_RIGHT

Move the values accordingly.

Q3 — Staff ID Alignment

Create two new variables:

STAFF_LEFT
STAFF_RIGHT

STAFF_LEFT should have the staff ID positioned toward the left, while STAFF_RIGHT should have it positioned toward the right.

Q4 — Compare Alignment 🔥

Create:

NAME_LEFT
NAME_RIGHT

Use STAFF_NAME as the source.

The first variable should position the name toward the left, and the second should position it toward the right.

Then use:

PROC PRINT DATA=Q4;
VAR STAFF_NAME NAME_LEFT NAME_RIGHT;
RUN;

Observe the difference carefully.

Q5 — 🔥 Exam Challenge

The reporting team wants the following:

STAFF_NAME → positioned on the left
ROLE → positioned on the right
BRANCH → positioned on the left
STAFF_ID → positioned on the right

Create these four variables:

FINAL_NAME
FINAL_ROLE
FINAL_BRANCH
FINAL_ID

=========================================================================================================================================================================
LENGTH FUNCTION — Questions
==========================================================================================================================================================================


New Dataset
DATA ORDERS;
INPUT ORDER_ID $10. CUSTOMER $20. PRODUCT $20. CATEGORY $15.;
DATALINES;
ORD101 Rajesh Kumar   Laptop       Electronics
ORD102 Priya Shah     Keyboard     Accessories
ORD103 Amit Verma     Monitor      Electronics
ORD104 Neha Joshi     Printer      Office
ORD105 Kiran Patel    Headset      Accessories
ORD106 Sneha Rao      Tablet       Electronics
;
RUN;
Practice Questions — LENGTH
Q1 — Customer Data Validation

The data-management team wants to know the length of the CUSTOMER value stored in each observation.

Create:

CUSTOMER_LEN
Q2 — Product Name Check

The quality team wants to check the length of every PRODUCT.

Create:

PRODUCT_LEN

Do not modify PRODUCT.

Q3 — Compare Character Lengths

Create two variables:

CUSTOMER_LEN
PRODUCT_LEN

Then create:

LENGTH_DIFF

LENGTH_DIFF should contain the difference between the customer length and product length.

Q4 — Longest Value 🔥

The data team wants to identify the larger character length between CUSTOMER and PRODUCT.

Create:

MAX_LENGTH

For each observation, it should contain whichever length is greater.

=========================================================================================================================================================================
LENGTHC FUNCTION — Questions
==========================================================================================================================================================================

SAS Practice — LENGTHC
Q1 — Patient Name Length

The data team wants to know the character length of each PATIENT_NAME.

Create:

PATIENT_LEN
Q2 — Laboratory Test Length

Create:

TEST_LEN

It should contain the character length of LAB_TEST for every observation.

Q3 — Site Length

Create:

SITE_LEN

It should contain the character length of SITE.

Q4 — Compare Two Variables

Create:

PATIENT_LEN
SITE_LEN
LENGTH_DIFF

Where:

LENGTH_DIFF = PATIENT_LEN - SITE_LEN
Q5 — 🔥 Scenario-Based Challenge

The data-management team wants to know the total character length of the following three variables:

PATIENT_NAME
LAB_TEST
LAB_RESULT

Create:

TOTAL_CHAR_LEN

=========================================================================================================================================================================
TRANWRD FUNCTION — Questions
==========================================================================================================================================================================

TRANWRD Practice Set
Q1 — Treatment Replacement

The clinical team wants to rename every occurrence of:

DrugA

to:

Treatment-X

Create a new variable:

NEW_TREATMENT

Do not change TREATMENT.

Q2 — Site Standardization

The database team wants to standardize the site name:

Mumbai → Mumbai-Center

Create:

NEW_SITE

All other site values must remain unchanged.

Q3 — Status Update

The study reporting team wants to change:

Active → Ongoing

Create:

NEW_STATUS

Keep STATUS unchanged.

Q4 — Medication Replacement 🔥

The medical team wants to update:

Aspirin → Aspirin-100mg

Create:

NEW_MEDICATION

Only the specified medication should be changed.

Q5 — Multiple Replacement Challenge 🔥🔥

Create:

FINAL_TREATMENT

The new variable must contain the treatment with these changes:

DrugA → Treatment-X
DrugB → Treatment-Y
DrugC → Treatment-Z

Expected examples:

DrugA → Treatment-X
DrugB → Treatment-Y
DrugC → Treatment-Z

=========================================================================================================================================================================
TRANSLATE FUNCTION — Questions
==========================================================================================================================================================================



Scenario Practice — 5 Questions
Q1 — Sex Code Standardization

The clinical database stores sex as:

M
F

The reporting team wants the codes changed to:

M → X
F → Y

Create:

SEX_CODE

Keep the original SEX unchanged.

Q2 — Test Code Formatting

The laboratory system does not accept hyphens in test codes.

For example:

LAB-001 → LAB_001
LAB-002 → LAB_002

Create:

NEW_TEST_CODE

Only the hyphen should change.

Q3 — Status Code Formatting

The clinical database uses hyphens in the status codes, but the reporting system requires /.

For example:

SCR-001 → SCR/001
SCR-002 → SCR/002

Create:

NEW_STATUS_CODE

Do not modify STATUS_CODE.

Q4 — Phone Code Cleaning 🔥

The data-management team wants to replace the hyphen in every PHONE_CODE with a space.

For example:

+91-020 → +91 020
+1-416  → +1 416

Create:

CLEAN_PHONE

Keep the original PHONE_CODE.

Q5 — 🔥🔥 Exam-Level Challenge

The laboratory system wants all test codes to use / instead of -.

Create:

FINAL_TEST_CODE

For every observation:

LAB-001 → LAB/001
LAB-002 → LAB/002
LAB-003 → LAB/003
...

Important: Only the - character should be replaced. The letters and numbers must remain exactly the same.

Do not modify the original TREATMENT.

==============                                    =============================================    ====================================
========================          ==========================================================              ===============================================


                                                                                    SOLUTIONS
=============================================================================================================================================================================

/* DAILY TASK -5 QUESTIONS OF EACH FUNCTION */

/* INDEXW FUNTION- IT HELPS TO KNOW THE STATING POSITION OF WORD */

DATA PATIENTS;
    INPUT SUBJECT $ COMMENT $ 40.;
    DATALINES;
SUB001 Patient is stable
SUB002 Patient has fever
SUB003 Patient received DrugA
SUB004 Patient is unstable
SUB005 Patient received DrugB
;
RUN;

/* Q1 */
DATA Q1;
SET PATIENTS;
POSITION=INDEXW(COMMENT,"stable");
RUN;

/* Q2 */
DATA Q2;
SET PATIENTS;
FEVER_POS=INDEXW(COMMENT,"fever");
RUN;

/* Q3 */
DATA Q3;
SET PATIENTS;
DRUG_POS=INDEXW(COMMENT,"DrugA");
RUN;

/* Q4 */
DATA Q4;
SET PATIENTS;
POSITION=INDEXW(UPCASE(COMMENT),"STABLE");
RUN;

/* Q5 */
DATA Q5;
SET PATIENTS;
POSITION=INDEXW(COMMENT,"stable");
RUN;


/* FINDW FUNCTION- IT IS USED TO KNOW THE STARTING POSITION OF WORD BUT WITH ADDITIONAL OPTIONS */

DATA VISITS;
    INPUT SUBJECT $ NOTE $40.;
    DATALINES;
SUB101 Patient received DrugA
SUB102 Patient received DrugB
SUB103 Patient has fever
SUB104 Patient received DRUGA
SUB105 Patient is stable
SUB106 Patient received DrugA today
;
RUN;

/* Q1 */
DATA Q1;
SET VISITS;
DRUG_POS=FINDW(NOTE,"DrugA");
RUN;

/* Q2 */
DATA Q2;
SET VISITS;
DRUG_POS=FINDW(NOTE,"DRUGA");
RUN;

/* Q3 */
DATA Q3;
SET VISITS;
FEVER_POS=FINDW(NOTE,"fever");
RUN;

/* Q4 */
DATA Q4;
SET VISITS;
DRUG_POS=FINDW(NOTE,"DRUGA");
RUN;

/* Q5 */
DATA Q5;
SET VISITS;
DRUG_POS=FINDW(NOTE,"dRUGA",);
RUN;

/* STRIP- IT IS USED TO REMOVE BOTH TRAILING AND LEADING SPACE FROM A CHARACTER STRING ,IT DOES NOT REMOVE SPACES BETWEEN WORDS */

DATA CLINICAL;
INPUT SUBJECT $10. PATIENT_NAME $30. TREATMENT $15. SITE $20. STATUS $15.;
DATALINES;
SUB001    shrikant     kumar     DrugA     Pune        Completed
SUB002  JOHN      SMITH          DrugB     Mumbai      Ongoing
SUB003   rAHUL    sINGH         DrugA      Delhi       Completed
SUB004 PRIYA       SHARMA       DrugC      Pune        Ongoing
SUB005     AMIT    PATEL        DrugB      Chennai     Completed
SUB006 NEHA       KUMAR         DrugA      Mumbai      Ongoing
;
RUN;

/* Q1 */
DATA Q1;
SET CLINICAL;
CLEAN_NAME=STRIP(PATIENT_NAME);
RUN;

/* Q2 */
DATA Q2;
SET CLINICAL;
PATIENT_TREATMENT=STRIP(CATX("-",PATIENT_NAME,TREATMENT));
RUN;

/* Q3 */
DATA Q3;
SET CLINICAL;
SITE_STATUS=STRIP(CATX("-",SITE,STATUS));
RUN;

/* Q4 */
DATA Q4;
SET CLINICAL;
PATIENT_ID=STRIP(CATX("-",SUBJECT,PATIENT_NAME));
RUN;

/* Q5 */
DATA Q5;
SET CLINICAL;
FINAL_RECORD=STRIP(CATX("|",SUBJECT,COMPBL(PROPCASE(PATIENT_NAME)),TREATMENT,SITE,STATUS));
RUN;


/* TRIM- IT HELPS TO REMOVE TRAILING BLANKS FROM THE CHARACTER STRING */

DATA EMPLOYEE;
INPUT EMP_ID $ EMP_NAME $20. DEPARTMENT $15. LOCATION $15. STATUS $12.;
DATALINES;
E101 Ramesh       Kumar       Finance       Pune        Active
E102 Sneha        Patil       Research      Mumbai      Active
E103 Arjun        Mehta       Safety        Delhi       Inactive
E104 Kavya        Shah        Programming   Hyderabad   Active
E105 Rohit        Joshi       Data          Chennai     Active
E106 Anjali       Rao         Quality       Bengaluru   Inactive
;
RUN;

/* Q1 */
DATA Q1;
SET EMPLOYEE;
CLEANNAME=TRIM(EMP_NAME);
RUN;

/* Q2 */
DATA Q2;
SET EMPLOYEE;
EMP_DEPT=TRIM(CATX("-",EMP_ID,DEPARTMENT));
RUN;

/* Q3 */
DATA Q3;
SET EMPLOYEE;
EMP_LOCATION=TRIM(CATX(":",EMP_ID,LOCATION));
RUN;

/* Q4 */
DATA Q4;
SET EMPLOYEE;
EMP_STATUS=TRIM(CATX(" - ",SCAN(EMP_NAME,1," "),STATUS));
RUN;

/* Q5 */
DATA Q5;
SET EMPLOYEE;
EMP_RECORD=TRIM(CATX("|",EMP_ID,SCAN(EMP_NAME,1," "),DEPARTMENT,LOCATION,STATUS));
RUN;

/* LEFT & RIGHT FUNCTION */

DATA STAFF;
INPUT STAFF_ID $ STAFF_NAME $ ROLE $ BRANCH $;
DATALINES;
S101       Amit        Analyst       Pune
S102       Neha        Manager       Mumbai
S103       Vikram      Programmer    Delhi
S104       Pooja       Tester        Chennai
S105       Karan       Developer     Hyderabad
S106       Meena       Lead          Kolkata
;
RUN;


/* Q1 */
DATA Q1;
SET STAFF;
STAFF_NAME_LEFT=LEFT(STAFF_NAME);
RUN;

/* Q2 */
DATA Q2;
SET STAFF;
ROLE_RIGHT=RIGHT(ROLE);
RUN;

/* Q3 */
DATA Q3;
SET STAFF;
STAFF_LEFT=LEFT(STAFF_ID);
STAFF_RIGHT=RIGHT(STAFF_ID);
RUN;

/* Q4 */
DATA Q4;
SET STAFF;
NAME_LEFT=LEFT(STAFF_NAME);
NAME_RIGHT=RIGHT(STAFF_NAME);
RUN;

/* Q5 */
DATA Q5;
SET STAFF;
FINAL_NAME=LEFT(STAFF_NAME);
FINAL_ROLE=RIGHT(ROLE);
FINAL_BRANCH=LEFT(BRANCH);
FINAL_ID=RIGHT(STAFF_ID);
RUN;

/* LENGTH- IT GIVES YOU THE LENGTH OF CHARACTER VARIABLE WITHOUT REMOVING TRAILING SPACE */

DATA ORDERS;
INPUT ORDER_ID $ CUSTOMER $15. PRODUCT $ CATEGORY $15.;
DATALINES;
ORD101 Rajesh Kumar   Laptop       Electronics
ORD102 Priya Shah     Keyboard     Accessories
ORD103 Amit Verma     Monitor      Electronics
ORD104 Neha Joshi     Printer      Office
ORD105 Kiran Patel    Headset      Accessories
ORD106 Sneha Rao      Tablet       Electronics
;
RUN;

/* Q1 */
DATA Q1;
SET ORDERS;
COSTOMER_LEN=LENGTH(COSTOMER);
RUN;

/* Q2 */
DATA Q2;
SET ORDERS;
PRODUCT_LEN=LENGTH(PRODUCT);
RUN;

/* Q3 */
DATA Q3;
SET ORDERS;
COSTOMER_LEN=LENGTH(COSTOMER);
PRODUCT_LEN=LENGTH(PRODUCT);
LENGTH_DIFF=COSTOMER_LEN-PRODUCT_LEN;
RUN;

/* Q4 */
DATA Q4;
SET ORDERS;
MAXLENGTH=LENGTH(COSTOMER);
MAXXLENGTH=LENGTH(PRODUCT);
RUN;

/* LENGTHC - IT HELPS KNOW THE LENGTH OF STRING INCLUDING TRAILING SPACE */

DATA LABDATA;
INPUT SAMPLE_ID $ PATIENT_NAME $ LAB_TEST $ LAB_RESULT $ SITE $;
DATALINES;
SMP001 Arjun Hemoglobin Normal Pune
SMP002 Kavya Platelet High Mumbai
SMP003 Rohit Glucose Normal Delhi
SMP004 Anjali Cholesterol High Chennai
SMP005 Vikram Creatinine Normal Hyderabad
SMP006 Pooja Bilirubin Low Kolkata
;
RUN;

PROC PRINT DATA=LABDATA;
RUN;

/* Q1 */
DATA Q1;
SET LABDATA;
PATIENT_LEN=LENGTHC(PATIENT_NAME);
RUN;

/* Q2 */
DATA Q2;
SET LABDATA;
TEST_LEN=LENGTHC(LAB_TEST);
RUN;

/* Q3 */
DATA Q3;
SET LABDATA;
SITE_LEN=LENGTHC(SITE);
RUN;

/* Q4 */
DATA Q4;
SET LABDATA;
PATIENT_LEN=LENGTHC(SAMPLE_ID);
RUN;

/* Q5 */
DATA Q5;
SET LABDATA;
TOTALLENGTH=LENGTHC(LAB_RESULT);

/* TRANWRD is a SAS character function used to replace one word or character string with another string. */

DATA PATIENTDATA;
INPUT SUBJECT $ PATIENT_NAME $ TREATMENT $ SITE $ STATUS $ MEDICATION $;
DATALINES;
PT001 Rakesh DrugA Pune Active Aspirin
PT002 Sneha DrugB Mumbai Completed Paracetamol
PT003 Vikram DrugA Delhi Active Ibuprofen
PT004 Anjali DrugC Chennai Withdrawn Metformin
PT005 Karan DrugB Hyderabad Active Aspirin
PT006 Pooja DrugA Pune Completed Paracetamol
PT007 Nitin DrugC Mumbai Active Ibuprofen
PT008 Kavita DrugB Delhi Withdrawn Metformin
PT009 Rahul DrugA Chennai Active Aspirin
PT010 Meena DrugC Hyderabad Completed Paracetamol
;
RUN;

PROC PRINT DATA=PATIENTDATA;
RUN;

/* Q1 */
DATA Q1;
SET PATIENTDATA;
NEW_TREATMENT=TRANWRD(TREATMENT,"DrugA","X");
RUN;

/* Q2 */
DATA Q2;
SET PATIENTDATA;
NEW_SITE=TRANWRD(SITE,"Mumbai","Mumbai-Center");
Run;

/* Q3 */
DATA Q3;
SET PATIENTDATA;
NEW_STATUS=TRANWRD(STATUS,"Active","Ongoing");
RUN;

/* Q4 */
DATA Q4;
SET PATIENTDATA;
NEW_MEDICATION=TRANWRD(MEDICATION,"Asprin","Asprin-100mg");
RUN;

/* Q5 */
DATA Q5;
SET PATIENTDATA;
NEW_VARIABLE=TRANWRD(TREATMENT,"DrugA","Treatment-X");
NEW_VARIABLE=TRANWRD(NEW_VARIABLE,"DrugB","Treatment-Y");
NEW_VARIABLE=TRANWRD(NEW_VARIABLE,"DrugC","Treatment-Z");
run;

/* TRANSLATE FUNCTION - IT IS USSED TO REPLACE GIVEN CHARACTER IN STRING */

DATA SCREENING;
INPUT SUBJECT $ COUNTRY $ SEX $ TEST_CODE $ STATUS_CODE $ PHONE_CODE $;
DATALINES;
SUB201 India M LAB-001 SCR-001 +91-020
SUB202 Canada F LAB-002 SCR-002 +1-416
SUB203 France M LAB-003 SCR-003 +33-01
SUB204 Japan F LAB-004 SCR-004 +81-03
SUB205 Germany M LAB-005 SCR-005 +49-030
SUB206 Brazil F LAB-006 SCR-006 +55-011
SUB207 India F LAB-007 SCR-007 +91-080
SUB208 Canada M LAB-008 SCR-008 +1-604
;
RUN;

PROC PRINT DATA=SCREENING;
RUN;

/* Q1 */
DATA Q1;
SET SCREENING;
SEX_CODE=TRANSLATE(SEX,"X","M");
SEX_CODE=TRANSLATE(SEX_CODE,"Y","F");
RUN;

/* Q2 */
DATA Q2;
SET SCREENING;
NEW_TEST_CODE=TRANSLATE(TEST_CODE,"_","-");
RUN;

/* Q3 */
DATA Q3;
SET SCREENING;
NEW_STATUS_CODE=TRANSLATE(STATUS_CODE,"/","-");
RUN;

/* Q4 */
DATA Q4;
SET SCREENING;
CLEAN_PHONE=TRANSLATE(PHONE_CODE," ","-");
RUN;

/* Q5 */
DATA Q5;
SET SCREENING;
FINAL_TEST_CODE=TRANSLATE(TEST_CODE,"/","-");
RUN;
