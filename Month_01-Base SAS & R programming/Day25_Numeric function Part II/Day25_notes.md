Day 25
Topic - Numeric Function in SAS
Author - Shrikant Kumar
==============================================================================================================================================================================
3.Date & Time Functions

TODAY() FUNCTION IN SAS
TODAY() is a SAS date function that returns the current date as a SAS date value.

Syntax
TODAY()
Example
DATA TEST;
    TODAY_VALUE = TODAY();
    FORMAT TODAY_VALUE DATE9.;
RUN;

The value displayed will be today's date

DATE Function
The DATE function returns today's current date as a SAS date value.

Note: DATE() and TODAY() return the same result in SAS.

Syntax
DATE()	

TIME() FUNCTION IN SAS
TIME() returns the current system time.

Syntax
TIME()
It takes no arguments.

2. What does TIME() return?

This is the most important concept.

TIME() returns a numeric SAS time value.

A SAS time value is:

The number of seconds since midnight (00:00:00).

For example:

Clock Time	SAS Time Value
00:00:00	0
00:00:01	1
00:01:00	60
01:00:00	3600
02:00:00	7200

So,

CURRENT_TIME = TIME();

stores a numeric value, not a character string.

3. Basic Example
DATA TEST;
    CURRENT_TIME = TIME();
RUN;

Without a format, you might see a number like:

CURRENT_TIME
38254
That number means:

38,254 seconds after midnight.

4. Displaying the Time

To display it as a clock time, use a time format.

DATA TEST;
    CURRENT_TIME = TIME();
    FORMAT CURRENT_TIME TIME8.;
RUN;

Example output:

10:37:34


DATETIME() FUNCTION IN SAS
DATETIME() is a SAS function that returns the current date and current time together.

Syntax
DATETIME()
It takes no arguments.

DATA EXAMPLE1;
CURRENT_DT=DATETIME();
FORMAT CURRENT_DT DATETIME20.;
RUN;

DATA VISITS;
    SUBJECT_ID = 101;
    CURRENT_DT=DATETIME();
    FORMAT CURRENT_DT DATETIME20.;
    RUN;

MDY() FUNCTION IN SAS
MDY() is a SAS date function that creates a SAS date value from separate Month, Day, and Year values.

Syntax
MDY(MONTH, DAY, YEAR)
It has 3 arguments:
Month
Day
Year

Example 1
DATA TEST;
DATE1 = MDY(7,30,2026);
FORMAT DATE1 DATE9.;
RUN;

Output: DATE1=30JUL2026

HMS() FUNCTION IN SAS

HMS() is a SAS time function that creates a SAS time value from separate Hour, Minute, and Second values.

It is the time equivalent of MDY(), which creates a date.

Syntax
HMS(HOUR, MINUTE, SECOND)

It has 3 arguments:

Hour
Minute
Second
How HMS() Works

Suppose you have:

Hour   = 14
Minute = 25
Second = 40

Using:

TIME1 = HMS(14,25,40);

SAS creates a numeric SAS time value.

Display it with:

FORMAT TIME1 TIME8.;

Output:

14:25:40
Example 1
DATA TEST;
TIME1 = HMS(9,30,15);
FORMAT TIME1 TIME8.;
RUN;

Output

09:30:15
Example 2
DATA TEST;
HR = 18;
MIN = 45;
SEC = 20;

VISIT_TIME = HMS(HR,MIN,SEC);

FORMAT VISIT_TIME TIME8.;
RUN;

Output

18:45:20


DAY() FUNCTION IN SAS

DAY() is a SAS date function that extracts the day of the month from a SAS date value.

Syntax
DAY(DATE)
Example
DATA TEST;
    DATE_VALUE = '29JUL2026'D;
    DAY_VALUE = DAY(DATE_VALUE);
RUN;

Result:

DATE_VALUE  = 29JUL2026
DAY_VALUE   = 29

MONTH Function
The MONTH function returns the month number from a SAS date value.

Syntax
MONTH(SAS_DATE)

YEAR Function
The YEAR function returns the year from a SAS date value.

Syntax
YEAR(SAS_DATE)

DATEPART Function
The DATEPART function extracts the date portion from a SAS datetime value.

Syntax
DATEPART(DATETIME_VALUE)

DATA TEST;
    DT='02AUG2026:10:30:45'DT;
    D=DATEPART(DT);
    FORMAT D DATE9.;
RUN;
OUTCOME :02AUG2026

TIMEPART Function
The TIMEPART function extracts the time portion from a SAS datetime value.

Syntax
TIMEPART(DATETIME_VALUE)
DATA TEST;
    DT='02AUG2026:10:30:45'DT;
    T=TIMEPART(DT);
    FORMAT T TIME8.;
RUN;

OUTCOME : 10:30:45


DATEJUL Function in SAS

DATEJUL converts a Julian date into a SAS date value.

Syntax
DATEJUL(JULIAN_DATE)

A Julian date in SAS is represented as:

YYYYDDD

where:

YYYY = year
DDD = day of the year

For example:

2026210

means:

Year = 2026
Day  = 210th day of the year
Example
DATA TEST;
    JULIAN_DATE = 2026210;
    SAS_DATE = DATEJUL(JULIAN_DATE);
    FORMAT SAS_DATE DATE9.;
RUN;

Important

DATEJUL() does not return a formatted date directly.

It returns a numeric SAS date value.

Remember
DATEJUL() → Julian date → SAS date

WEEKDAY() FUNCTION IN SAS

WEEKDAY() is a SAS date function that tells you the day of the week for a SAS date.

Syntax
WEEKDAY(DATE)

It returns a numeric value from 1 to 7.

Value	Day
1	Sunday
2	Monday
3	Tuesday
4	Wednesday
5	Thursday
6	Friday
7	Saturday
Example
DATA TEST;
    DATE_VALUE = '29JUL2026'D;
    DAY_NUMBER = WEEKDAY(DATE_VALUE);
RUN;

29JUL2026 is a Wednesday, so:

DAY_NUMBER = 4
⭐ Important distinction

WEEKDAY() does not return the name "Wednesday".

It returns:
4

QTR() FUNCTION IN SAS

QTR() is a SAS date function that returns the quarter of the year for a SAS date.

Syntax
QTR(DATE)

It returns a numeric value from 1 to 4.

QTR value	Quarter	Months
1	Q1	January–March
2	Q2	April–June
3	Q3	July–September
4	Q4	October–December
Example
DATE_VALUE = '29JUL2026'D;
QUARTER = QTR(DATE_VALUE);

Since July is in the third quarter:

QUARTER = 3
⭐ Important distinction	

QTR() does not return "Q3".

It returns:

3

4. Date Interval Functions

INTCK Function
INTCK() Function:-
INTCK() counts the number of interval boundaries (such as days, weeks, months, quarters, or years) between two dates, times, or datetime values.In Simple Words
Think of INTCK() as a counter.
It tells you:
How many days passed?
How many weeks passed?
How many months passed?
How many quarters passed?
between two dates.

Syntax
INTCK(interval, start-of-period, end-of-period)

Important
Works with Date, Time, and Datetime values.
Returns a numeric value.
Counts interval boundaries.

You can tell INTCK what you're counting:
intck('day',date1,date2)    → day boundaries
intck('week',date1,date2)   → week boundaries
intck('month',date1,date2   → month boundaries
intck('qtr',date1,date2)    → quarter boundaries
intck('year',date1,date2)   → year boundaries

EXAMPLE 1
DATA TEST;
START='01JAN2025'D;
END='10JAN2025'D;
DAYS=INTCK('DAY',START,END);
RUN;

Output : DAYS=9

INTNX Function
The INTNX function returns a new SAS date, time, or datetime value by moving forward or backward by a specified interval. 
INTNX(INTERVAL, START_FROM, INCREMENT <, ALIGNMENT>)
Syntax Explanation
Argument	Meaning
INTERVAL	Unit to move (DAY, WEEK, MONTH, YEAR, QTR, etc.)
START_FROM	Starting SAS date, time, or datetime value
INCREMENT	Number of intervals to move (positive or negative)

DATA TEST;
TODAY='15AUG2026'D;
NEXT_DAY=INTNX('DAY',TODAY,1);
FORMAT TODAY NEXT_DAY DATE9.;
RUN;

Output : NEXT_DAY=16AUG2026
