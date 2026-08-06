Day - 23
Topic - Date format Time format
Author - Shrikant kumar
==============================================================================================================================================================
DATE & TIME FORMAT
SAS date and time formats are used to display dates
and times in a readable form. They help convert
numeric values into simple calendar dates and clock
times.
1.Introduction
2.Date Format in SAS
Brief introduction
How date format works in SAS
Date constant in SAS
Common date formats
Example
3.Time Format in SAS
Brief introduction
How time format works in SAS
Time constant in SAS
Common time formats
Example
4.Key Understanding
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
CONTENTS :-
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
1. Introduction
In SAS, date and time values are stored as numbers, but formats are used to
display them in a readable way. Date formats show calendar dates, and
time formats show clock time. These formats do not change the stored
value; they only change how it appears in output.
Brief introduction
A SAS date is a numeric value that represents the number of days from
January 1, 1960. Dates before this point are stored as negative numbers, and
dates after it are stored as positive numbers.
Dates after 01JAN1960 ---- Positive No (starts with 1)
Date at 01JAN1960 ---- 0
Dates before 01JAN1960 ---- Negative No (starts with -1)
How date format works in SAS
When SAS stores a date, it keeps only the number of days. To make it
readable, SAS applies a date format in a FORMAT statement.
For example, the same internal date can be shown as 17OCT1991,
17/10/1991, or 17OCT91 depending on the format used.
Date constant in SAS
A date constant is written as 'DDMONYYYY'D, such as '17OCT1991'D.
This tells SAS that the value is a date.
2. Date Format in SAS
SAS Format Example
DATE9. 05AUG2026
MMDDYY10. 08/05/2026
DDMMYY10. 05/08/2026
DATE11. 05-AUG-2026
DATE7. 05AUG26
DDMMYY8. 05/08/26
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
Common date formats
data demo;
 birthdate = '17JUN2002'd;
 format birthdate date9.;
run;
NOTE : The format changes only the display of the date, not the actual
stored value.support.sas+1
Example
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
Brief introduction
A SAS time is a numeric value that represents the number of seconds since
midnight. SAS time values usually range from 0 to 86,400.
How time format works in SAS
SAS stores time as seconds, but a time format converts that number into a
clock-like display. In a FORMAT statement, SAS can show the time as
14:25:32, 14:25, or other readable forms.
Time constant in SAS
A time constant is written as 'hh:mm:ss't, such as '14:25:32't. This tells SAS
that the value is time.
3. Time Format in SAS
SAS Format Example
TIME8. 14:25:32
TIME5. 14:25
HHMM5. 14:25
MMSS5. 25:32
TOD8. 14:25:32
Common time formats
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
Example
data demo;
 starttime = '14:25:32't;
 format starttime time8.;
run;
NOTE : The format changes only the display of the time, not the stored
value.
4. Key Understanding
SAS stores date and time values as numbers.
Date values count days from 01JAN1960.
Time values count seconds from midnight.
Formats change the display, not the stored value.
Date and time formats make SAS output clear and readable.
Shrikant Kumar www.linkedin.com/in/shrikantkumar-clinicalsas sk0809sas@gmail.com
Your time and attention mean a lot to me. I truly hope these notes
make your SAS learning journey a little easier and help you move one
step closer to your goals.
Happy learning,📚✨
THANK YOU
Shrikant Kumar
A s p i r i n g C l i n i c a l S A S P r o g r a m m e r
Scan the QR code to explore the repository and follow my learning journey.
