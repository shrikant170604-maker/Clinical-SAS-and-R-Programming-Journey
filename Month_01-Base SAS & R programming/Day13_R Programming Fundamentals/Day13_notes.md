Day-13 
Topic-R Programming Fundamentals.
Author-Shrikant Kumar
==================================================================================================================
abs() Function - Absolute Value:-
abs() returns the absolute value of a number — it removes the negative sign and always returns a non-negative number.

Syntax:-
abs(x)

#EXAMPLE 1
abs(5)          Output: 5
abs(-5)         Output: 5
abs(0)          Output: 0

#EXAMPLE 2
abs(c(-3, -2, -1, 0, 1, 2, 3))
Output: 3 2 1 0 1 2 3

# Clinical use abs()
Blood Pressure Difference
Patient Weight Change
Body Temperature Difference

The c() function- Combine
c() is a built-in R function that combines multiple values into a single vector

Syntax:-
X=c("a","b","c")

#EXAMPLE 1
name=c("Rahul","Priya","Amit","Neha")

#EXAMPLE 2
random_no=c(10,20,30,40)

Clinical Uses of c()
Drug Combination Analysis
Clinical Trial Treatment Groups
Adverse Event Analysis

print() Function:-
The print() function in R is used to display the value of an object, variable, vector, matrix, or data frame on the console.

Syntax:-
print(x, ...)

#EXAMPLE 1
x=100
print(x)

#EXAMPLE 2
name="Shrikant"
print(name)

cat() Function:-
The cat() (concatenate) function in R is used to display text, variables, and values together in a single line.
It is commonly used to produce clean output messages without quotes or index numbers.

Syntax:-
cat("xyz",)

NOTE:- "\n" is a newline character. It tells R to move the cursor to the next line after printing the current text.

#EXAMPLE 1
name="Shrikant"
age=25
cat("Name:", name, "Age:", age)
Output-Name: Shrikant Age: 25

#EXAMPLE 2
cat("Patient Name: Shrikant""\n""Age: 25")
Output-Patient Name: Shrikant
       Age: 25


								                                                  DATA TYPES IN R
								                                                      |
								                                                      |
     _________________________________________________________________|________________________________________________________
    |																			                                                                                      |
CHARACTER																	                                                                                   NUMERIC
____|________________________________________________________				          _________________________________________________|______________________
|							                                              |					       |									                                                      |
ORDINAL                                                  NOMINAL			     DISCRETE                                                                  CONTINUOUS
(Categories with a meaningful order)             (Categories with no order)                Countable   									                      Measurable
Can be Ranked? ✅ Yes                             Can be Ranked?❌ 			      No Whole numbers   						                            	Any decimal value
Examples Pain Level, Education Level,              Examples Gender, Blood Group,      Gaps between values Counted 		             No gaps (infinite precision) measured
										                                                                  	AE count: 0,1,2,3...                                 Weight: 68.5, 68.51, 68.512
                                                                                        No. of patients: 50                                  Temperature: 98.6, 98.63
                                                                                        No. of tablets: 2                                    Blood pressure: 120.5
																					
DATA STRUCTURES IN R
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Structure    Dimensions    Data Types       Like...
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Vector       1D            Same type        Single column
Array        nD            Same type        Multi-dim table
List         1D            Different types  Shopping bag
Factor       1D            Categorical      Coded variable
DataFrame    2D (rows×col) Mixed types      Excel table/SAS dataset

Vector → Stores same type of values in one dimension.
Array → Stores same type of values in multiple dimensions.
List → Stores different types of values in one object.
Factor → Stores categorical (group) data.
Data Frame → Stores data in rows and columns like an Excel sheet or a SAS dataset		

Memory Tricks (Quick Revision)
abs() → Always Be Positive ➜ Removes the negative sign.
c() → Combine ➜ Combines multiple values into one vector.
print() → Show ➜ Displays the value/object on the console.
cat() → Connect & Display ➜ Prints clean, formatted output.
"\n" → New Line (Enter) ➜ Moves the cursor to the next line.				  
