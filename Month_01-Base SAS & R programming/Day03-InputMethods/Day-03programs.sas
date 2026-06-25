/*============================================*/
/* DAY 3 — 17 June 2026                      */
/* Topic: 5 Input Methods                    */
/* Programmer: Shrikant Kumar                */
/*============================================*/

/*------------------------------------------*/
/* 1. LIST INPUT METHOD                     */
/*------------------------------------------*/

DATA notice;
   INPUT NAME $ AGE;
   CARDS;
SHRIKANT 25
RAM 28
VAIBHAV 32
;
RUN;

PROC PRINT DATA=notice;
   TITLE "1. List Input Method";
RUN;

/*------------------------------------------*/
/* 2. COLUMN INPUT METHOD                   */
/*------------------------------------------*/

DATA new1;
   INPUT NAME $ 5-22 ID 1-3 AGE 23-24;
   CARDS;
101 VIKRAM            26
102 SUMIT             23
103 KARUNA            25
104 VAIBHAV_SURYANSHI 36
;
RUN;

PROC PRINT DATA=new1;
   TITLE "2. Column Input Method";
RUN;

/*------------------------------------------*/
/* 3. COLUMN INPUT WITH @ POINTER           */
/*------------------------------------------*/

DATA new2;
   INPUT @5 NAME $ @1 ID @19 AGE;
   CARDS;
101 SHRIKANTKUMAR 28
103 RAMA          25
;
RUN;

PROC PRINT DATA=new2;
   TITLE "3. Column Input with @ Pointer";
RUN;

/*------------------------------------------*/
/* 4. FORMATTED INPUT METHOD                */
/*------------------------------------------*/

DATA formatted_ex;
   INPUT PatientID $6. Age 2.;
   CARDS;
PT001 45
PT002 38
;
RUN;

PROC PRINT DATA=formatted_ex;
   TITLE "4. Formatted Input Method";
RUN;

/*------------------------------------------*/
/* 5. NAMED INPUT METHOD                    */
/*------------------------------------------*/

DATA new3;
   INPUT PatientID= $ Age= Weight=;
   CARDS;
PatientID=PT001 Age=45 Weight=72.5
PatientID=PT002 Age=38 Weight=65.0
;
RUN;

PROC PRINT DATA=new3;
   TITLE "5. Named Input Method";
RUN;

/*------------------------------------------*/
/* 6. MODIFIED INPUT METHOD                 */
/*------------------------------------------*/

DATA modified_ex;
   INPUT PatientID $ Name & $20. Age;
   CARDS;
PT001 Raj Kumar  45
PT002 Priya Sen  38
;
RUN;

PROC PRINT DATA=modified_ex;
   TITLE "6. Modified Input - Ampersand Modifier";
RUN;
