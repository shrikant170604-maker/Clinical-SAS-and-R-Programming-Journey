/*============================================*/
/* DAY 2                                      */
/* Topic: Data Types + DATA Step             */
/* Programmer: Shrikant Kumar                */
/*============================================*/

/*------------------------------------------*/
/* Example 1: Basic Dataset                 */
/*------------------------------------------*/

DATA patients;
   INPUT PatientID $ Age Weight;
   DATALINES;
PT001 45 72.5
PT002 38 65.0
PT003 52 80.3
;
RUN;

PROC PRINT DATA=patients;
   TITLE "Day 2: Basic Patient Dataset";
RUN;

/*------------------------------------------*/
/* Example 2: Character and Numeric         */
/*------------------------------------------*/

DATA clinical;
   INPUT USUBJID $ AGE SEX $ WEIGHT;
   DATALINES;
ABC001 45 M 72.5
ABC002 38 F 65.0
ABC003 52 M 80.3
;
RUN;

PROC PRINT DATA=clinical;
   TITLE "Day 2: Clinical Dataset";
RUN;

/*------------------------------------------*/
/* Example 3: With Missing Values           */
/*------------------------------------------*/

DATA missing_ex;
   INPUT PatientID $ Age Weight;
   DATALINES;
PT001 45 72.5
PT002 .  65.0
PT003 52 .
;
RUN;

PROC PRINT DATA=missing_ex;
   TITLE "Day 2: Missing Values Example";
RUN;

# PRACTICE

/* Dataset 1 */

Data recorded_bp;
input name $ age sex $ systolic Distolic;
datalines;
shrikant 24 M 112 72
rohan 27 M 110 82
ramu 45 M 122 75
sita 32 F 112 68
rukmani 20 F 110 75
;
Run;
proc print data=recorded_bp;
run;


/* Dataset 2 */

data class_reportcard_2026;
input name $ roll_no passing_marks obtained_mask status$;
datalines;
Radha 1 70 65 fail
Alka 2 70 75 pass
sumit 3 70 72 pass
Ganesh 4 70 86 pass
Rahul 5 70 45 fail
;
run;
proc print data=class_reportcard_2026;
run;


/* Dataset 3 */

data annual_sportsday_planning_2026;
input sport $ :15. starting_month $ :20. seats_available equipment_available $ :20. conducted_by $ :20.;
datalines;
Cricket June 11 available rajmurti_sir
Football August 35 available suresh_sir
Badminton september 4 Not_available saniya_mam
Kabadi september 12 available tamang_sir
wushu december 4 Not_available nishant_sir
;
run;
proc print data=annual_sportsday_planning_2026;
run;


/* Dataset 4 */

data Admit_patient;
input patient_id $ name $ age sex $ disease $;
cards;
smw122 Ayush 32 M peptic_ulcer
smw123 Ram 41 M Kidney_stone
smw125 kavita 28 F infection
smw128 lakshmi 32 F leg_fracture
smw130 ravi 56 M Gallbladder_stone
;
run;
proc print data=admit_patient;
run;

/* Dataset 5 */

data monthly_salary;
input emp_id name $ month $ status $ bonus $;
datalines;
2064 Rakul may credited yes
2065 yash may credited no
2066 hari may Not_credited no
2067 vikram may credited yes
2068 ananya may credited no
;
run;
proc print data=monthly_salary;
run; 


/* dataset 6 */

data Cash_handover;
input date $ shift $ cash_payment upi_payment Credit_payment;
datalines;
15june Morning 25000 87000 23000
15june Afternoon 34000 98000 24000
15june Night 36000 99000 28000
16june morning 5000 24000 2500
16june afternoon 10000 25000 36000
16june Night 35000 25000 38000
;
proc print data=cash_handover;
run;


/* dataset 7 */
data shoes_stock;
input brand $ size available_stock order_status $;
datalines;
puma 7 5 pending
addidas 9 4 ordered
campus 8 3 ordered
redtape 9 5 pending
new_balance 8 2 ordered
;
run;
proc print data=shoes_stock;
run;


/* dataset 8 */

DATA Document_submition;
input name $ admission_formid $ kit $ tshirt_size idproff $;
datalines;
kishan sas101 Not_provided 42 submitted
raunak sas102 given 36 submitted
krish sas103 not_given 32 not-submitted
kalu sas104 not_given 44 not-submitted
karishma sas105 given 28 submitted
;
run;
proc print data=document_submition;
run;


/* dataset 9 */

data dilevery_list;
input deliveryid $ brand $ location $ total_no status $;
datalines;
gum1003 hp gumla 45 delivered
pat458 dell patna 65 pending
Jh348 lenovo ranchi 58 dilevered
mh588 asus maharastra 112 delivered
sur895 hp surat 115 pending
;
run;
proc print data=dilevery_list;
run;


/* dataset 10 */

data hostel_students;
input hostelwing $ wardan_name  $ total_students Vaccent_seat;
datalines;
wingA rupali 35 5
wingB ambani 45 3
wingC gautam 33 8
wingD akash 56 2
wingE ayush 33 5
;
run;
proc print data=hostel_students;
run;
