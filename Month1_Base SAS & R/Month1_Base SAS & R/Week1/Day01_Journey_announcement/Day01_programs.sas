/*============================================*/
/* DAY 1 — 15 June 2026                      */
/* Topic: Journey Start + SAS Studio Setup   */
/* Programmer: Shrikant Kumar                */
/* Institute: Clinical SAS Training          */
/*============================================*/

/* First program ever written in SAS Studio */

DATA my_journey;
   Name = "Shrikant Kumar";
   Background = "Hospital Pharmacist";
   Goal = "Clinical SAS Programmer";
   Started = "15-Jun-2026";
RUN;

PROC PRINT DATA=my_journey;
   TITLE "My Clinical SAS Journey Begins!";
RUN;
