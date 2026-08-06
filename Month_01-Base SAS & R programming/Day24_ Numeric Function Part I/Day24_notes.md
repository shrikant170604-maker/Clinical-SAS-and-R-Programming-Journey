Day 24
Topic Numeric function in SAS
Author- Shrikant Kumar
=================================================================================================================================================
1. Basic Mathematical Functions
ROUND() :-
ROUND function rounds a numeric value to the nearest specified unit.

Syntax
ROUND(argument,rounding unit)
where
argument-The value to be rounded.
rounding unit- The multiple to which the value should be rounded.
If omitted, SAS rounds to the nearest whole number.

Memory Rule
0.0 - 0.4  → Round Down
0.5 - 0.9  → Round Up

Example 1: Round to Whole Number
X=ROUND(15.4);

Output : 15

Example 2:Round to Decimal Places
One Decimal Place
X=ROUND(15.67,0.1);
Output: 15.7
Two Decimal Places
Y=ROUND(15.678,0.01);
Output:15.68

CEIL() Function:-
CEIL function returns the smallest integer that is greater than or equal to the argument.

Syntax
CEIL(argument)

Example-1
ceil(12.1)
ceil(12.9)

OUTPUT: 13

FLOOR() Function:-
FLOOR function returns the largest integer that is less than or equal to the argument.

Syntax
FLOOR(argument)

Example-1
floor(12.8)
floor(12.1)

OUTPUT: 12

INT() Function:-
The INT function returns the integer part of a number by removing the decimal portion.
It simply removes the decimal part. It does not round the number.

Syntax
INT(NUMBER)

Example-1
data test;
x = 15.87;
result = int(x);
run;

OUTPUT: result 15

2.Statistical Functions (Most Important)

SUM() Function:-
SUM function returns the sum of the nonmissing numeric values.

Syntax
SUM(argument1, argument2, ...)

Example-1
sum(10,20,30)

OUTPUT: 60

MEAN Function in SAS
The MEAN function in SAS is a statistical function used to calculate the arithmetic average of numeric values.

Syntax
MEAN(argument1, argument2, ...);

Important;
MEAN ignores missing values.
Example;-
data test;
    x = mean(10,20,.,40);
run;

The result is: 23.3333333
Because SAS calculates:
(10 + 20 + 40) / 3
It does not divide by 4.

To Remember:
MEAN ignores missing values, but if ALL arguments are missing, the result is missing.

MIN Function in SAS

The MIN function returns the smallest non-missing numeric value from the arguments you provide.

Syntax
MIN(argument1, argument2, ...);

Important: MIN ignores missing values

TO Remember:
MIN → returns the smallest non-missing value.

MAX() Function in SAS
The MAX() function returns the largest non-missing numeric value among the values supplied to it.

Syntax
MAX(ARGUMENT1, ARGUMENT2, ...);

Important: MAX ignores missing values

TO Remember:
MAX → returns the largest non-missing value.


RANGE() FUNCTION IN SAS
The RANGE() function returns the difference between the largest and smallest nonmissing values.

In simple terms:
RANGE = MAXIMUM − MINIMUM

Syntax
RANGE(ARGUMENT1, ARGUMENT2, ...);

Important: RANGE() ignores missing values.

TO Remember:If all arguments are missing, RANGE() returns a missing value.

N() FUNCTION IN SAS

The N() function returns the number of nonmissing numeric values in the arguments you provide.

Syntax
N(ARGUMENT1, ARGUMENT2, ...);

Important:
N() counts nonmissing values, not the total number of arguments.

Example
NMISS(10, ., 25, ., 40)

There are 3 nonmissing values, so:
N = 3


NMISS() FUNCTION IN SAS

The NMISS() function returns the number of missing numeric values in the arguments provided.

Syntax
NMISS(ARGUMENT1, ARGUMENT2, ...);

Example
NMISS(10, ., 25, ., 40)

There are 2 missing values, so:
NMISS = 2

LARGEST() FUNCTION IN SAS

The LARGEST() function returns the n-th largest non-missing value from a list of numeric values.

Syntax
LARGEST(N, VALUE1, VALUE2, ...);

Here, N specifies which largest value you want.

Important:
N = 1 means the 1st largest value
N = 2 means the 2nd largest value
LARGEST() is different from MAX()

SMALLEST() FUNCTION IN SAS

The SMALLEST() function returns the n-th smallest nonmissing value from a list of numeric values.

Syntax
SMALLEST(N, ARGUMENT1, ARGUMENT2, ...);

N specifies which smallest value you want.

Important:
N = 1 means the 1st smallest value
N = 2 means the 2nd smallest value

