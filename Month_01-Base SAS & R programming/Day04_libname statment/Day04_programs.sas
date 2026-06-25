/*============================================*/
/* DAY 4                     */
/* Topic: LIBNAME Statement                  */
/* Programmer: Shrikant Kumar                */
/*============================================*/

/*------------------------------------------*/
/* Example 1: Basic LIBNAME                 */
/*------------------------------------------*/

LIBNAME mylib "/home/uXXXXX/myfolders";

DATA mylib.patients;
   INPUT PatientID $ Age Weight;
   DATALINES;
PT001 45 72.5
PT002 38 65.0
PT003 52 80.3
;
RUN;

PROC PRINT DATA=mylib.patients;
   TITLE "Day 4: Permanent Dataset in mylib";
RUN;

/*------------------------------------------*/
/* Example 2: WORK vs Permanent             */
/*------------------------------------------*/

/* Temporary - goes to WORK */
DATA temp_data;
   INPUT name $ age;
   DATALINES;
RAM 25
PRIYA 28
;
RUN;

PROC PRINT DATA=temp_data;
   TITLE "Temporary Dataset - WORK Library";
RUN;

/*------------------------------------------*/
/* Example 3: SASHELP Practice              */
/*------------------------------------------*/

PROC PRINT DATA=sashelp.class;
   TITLE "SASHELP Built-in Dataset";
RUN;

/*------------------------------------------*/
/* Example 4: Clear Library                 */
/*------------------------------------------*/

/* LIBNAME mylib CLEAR; */
/* Disconnects library - files stay safe! */


/*========== PRACTICE OF LIBNAME STATMENT ========== */
/* TASK -3 PRACTICE OF CREATING LIBNAME STATMENT AND SET STATMENT WITH 5 EXAMPLES */

/* EXAMPLES */

LIBNAME RIDERS "/home/u64536648/DAILY TASK";
LIBNAME RAKUL "/home/u64536648/DAILY TASK";
LIBNAME RAMU "/home/u64536648/DAILY SESSIONS";
LIBNAME NANI "/home/u64536648/DAILY SESSIONS";
LIBNAME RAUSHNI "/home/u64536648/DAILY TASK";

/* PRACTICE OF SET STATMENT */

DATA EXAMPLE1;
SET SASHELP.airline;
RUN;

/* As here we had not defined the library name so it will default go to work library(temporary library) */

DATA EXAMPLE2;
SET SASHELP.baseball;
RUN;

DATA EXAMPLE3;
SET SASHELP.buy;
RUN;
PROC PRINT DATA=SASHELP.BUY;
RUN;

DATA EXAMPLE4;
SET SASHELP.air;
RUN;

DATA RAKUL.EXAMPLE4;
SET SASHELP.classfit;
RUN;
PROC PRINT DATA=RAKUL.EXAMPLE4;
RUN;
/* Here before example4 we had defined the library name which we have created earlier  */
/* so it will show data in rakul library also known as permanent library(user defined library) */



/* FOR DELETING ALL LIBRARY CREATED FOR PRACTICE */
LIBNAME RIDERS CLEAR;
LIBNAME RAKUL CLEAR;
LIBNAME RAMU CLEAR;
LIBNAME NANI CLEAR;
LIBNAME RAUSHNI CLEAR;
