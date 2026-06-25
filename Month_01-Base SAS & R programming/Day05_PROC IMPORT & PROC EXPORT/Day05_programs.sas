/*============================================*/
/* DAY 5                    */
/* Topic: PROC IMPORT and PROC EXPORT        */
/* Programmer: Shrikant Kumar                */
/*============================================*/

/*------------------------------------------*/
/* Example 1: Import CSV File               */
/*------------------------------------------*/

PROC IMPORT
   DATAFILE = "/home/uXXXXX/patients.csv"
   OUT = work.patients
   DBMS = CSV
   REPLACE;
   GETNAMES = YES;
RUN;

PROC PRINT DATA=work.patients;
   TITLE "Day 5: Imported CSV Data";
RUN;

/*------------------------------------------*/
/* Example 2: Import Excel File             */
/*------------------------------------------*/

PROC IMPORT
   DATAFILE = "/home/uXXXXX/clinical.xlsx"
   OUT = work.clinical
   DBMS = XLSX
   REPLACE;
   GETNAMES = YES;
   SHEET = "Demographics";
RUN;

PROC PRINT DATA=work.clinical;
   TITLE "Day 5: Imported Excel Data";
RUN;

/*------------------------------------------*/
/* Example 3: Export to CSV                 */
/*------------------------------------------*/

DATA work.results;
   INPUT PatientID $ Age Treatment $;
   DATALINES;
PT001 45 DrugA
PT002 38 Placebo
PT003 52 DrugA
;
RUN;

PROC EXPORT
   DATA = work.results
   OUTFILE = "/home/uXXXXX/results.csv"
   DBMS = CSV
   REPLACE;
RUN;

/*------------------------------------------*/
/* Example 4: Export to Excel               */
/*------------------------------------------*/

PROC EXPORT
   DATA = work.results
   OUTFILE = "/home/uXXXXX/results.xlsx"
   DBMS = XLSX
   REPLACE;
   SHEET = "Patient Results";
RUN;

                     
                     /* TODAYS TOPIC - PROC IMPORT AND PROC EXPORT */
                    /* PRACTICE  */
                   
                   
                   
/* FOR IMPORT  */

LIBNAME SAHU "/home/u64536648/DAILY SESSIONS";

 PROC IMPORT DATAFILES="/home/u64536648/DAILY SESSIONS/hospitals.csv"
 OUT=SAHU.PATIENT_DETAILS
 DBMS=CSV REPLACE;
 RUN;
 
/*  FOR EXPORT */

PROC EXPORT DATA=SAHU.patient_details
OUTFILE="/home/u64536648/DAILY SESSIONS/DETAIL.CSV"
DBMS=CSV
REPLACE;
RUN;


/* EXAMPLE 1 IMPORT */

PROC IMPORT DATAFILE="/home/u64536648/DAILY SESSIONS/student-dataset.csv"
OUT=SAHU.STUDENT_DATA
DBMS=CSV REPLACE;
RUN;



proc import datafile="/home/u64536648/DAILY SESSIONS/sunspots.csv"
out=sahu.sample
dbms=csv replace;
run;

PROC EXPORT DATA=SASHELP.CLASS
OUTFILE="/home/u64536648/DAILY SESSIONS/DETAIL.CSV"
DBMS= CSV 
REPLACE;
RUN;
PROC PRINT DATA=SASHELP.CLASS;
RUN;

PROC EXPORT DATA=SAHU.sample
OUTFILE="/home/u64536648/DAILY SESSIONS/NEW.CSV"
DBMS=CSV REPLACE;
RUN;

/* PRACTICE IMPORT */

             /*Example 1: FOR CSV FILE - HAVING ENDING IS .CSV */

PROC IMPORT DATAFILE="/home/u64536648/DAILY SESSIONS/NEW.CSV"
OUT= SAHU.KARATE_RECORD
DBMS=CSV REPLACE;
RUN;

PROC PRINT DATA=SAHU.KARATE_RECORD;
TITLE "NAME OF PERSON DOING KARATE";
RUN;
 
            /* Example 2: FOR EXCEL FILE - HAVING ENDING IS .XLSX*/ 

PROC IMPORT DATAFILE="/home/u64536648/DAILY SESSIONS/FSI-2023-DOWNLOAD.xlsx"
OUT=SAHU.CIGRATE_SMOKERS_RECORD
DBMS=XLSX REPLACE;
RUN;

/*==========================================*/
/* Example 3: Import Skipping Rows         */
/* When file has extra header rows         */
/*==========================================*/

/* GETNAMES = YES/NO */
/* → YES: First row of file = Variable names (DEFAULT) */
/* → NO:  First row is data, SAS creates VAR1, VAR2... */

/* DATAROW = n */
/* → Which row to start reading data from */
/* → Default = 2 (because row 1 = headers) */
  
PROC IMPORT DATAFILE="/home/u64536648/DAILY SESSIONS/DETAIL.CSV"
OUT=SAHU.BJP_LIST
DBMS=CSV REPLACE;
GETNAMES=YES;
DATAROW=3;
RUN;

