Day-14
Topic-Core Building Blocks of R Programming-Data structures
Author-Shrikant Kumar
==================================================================================================================
1.Variables:-
A variable stores information, and its name helps us find that information later.
Variable can be accessed, modified, and manipulated during the execution of a program.

#Example_1
name="Shrikant"
Here,
Variable Name = name
Stored Value = "Shrikant"

#Example_2
#hospital_record
patient_name="Shrikant"
age=26
blood_group="O+"
weight=69.8

Variable Naming Rules
Must start with a letter or a dot (.).
Cannot start with a number.
Can contain letters, numbers and underscores (_).
No spaces.
Variable names are case-sensitive.

NOTE:-Variable names are case-sensitive with given example.
age=25
Age=30
AGE=40
These are three different variables.
age ≠ Age ≠ AGE

2.Matrices
A matrix is a two-dimensional data structure that contains elements of the same data type(only one type of data), arranged in rows and columns.

#Example_1: 
Student Marks

          Math Science English

Shrikant   80      75      90

Gaurav     92      95      88

Shiv       70      68      75

Rows = Students
Columns = Subjects

#Example_2
marks <- matrix(c(80,90,70,95,88,76),nrow=2,ncol=3)
Output
     [,1] [,2] [,3]

[1,]  80   70   88

[2,]  90   95   76
The values are filled column by column.

Here are some important understandings. 
Default (byrow = FALSE)-R fills down each column first.
(byrow = TRUE)-R fills left to right across each row.

3.Array
An array is a collection of matrices stored together.

4.List
A list is a collection of different types of data stored together in a single object.

student=list(name="Shrikant",age=26,remarks="passed")
Output

[[1]]
[1] "Shrikant"

[[2]]
[1] 26

[[3]]
[1] passed

5.Factors:-
Factors are one of the most important data structures in R because they are specially designed to handle categorical data.

lets understand factor with the help of Example
Imagine your teacher asks students their blood group.
The answers are:
A,B,O,AB,A,B,O,A
Now imagine storing these values.
If you save them as text, the computer stores the letters A, B, O, AB repeatedly.
Instead, R says:
"These are just categories. I'll create a category list once and give each category a number."
Like this:
Categories
1 → A,2 → AB,3 → B,4 → O
Now R stores
1,3,4,2,1,3,4,1

NOTE- understanding from this example
This saves memory and makes statistical analysis easier.

6.Data Frame
A data frame is a tabular data structure consisting of rows and columns. Each column is a vector of a single data type, but different columns may have different data types.

#Example_1
| Patient ID | Treatment | Visit | BP  |
| ---------- | --------- | ----- | --- |
| 1001       | Drug A    | Day1  | 120 |
| 1002       | Placebo   | Day1  | 130 |
| 1003       | Drug B    | Day1  | 118 |

Revision points 
Data Structure-Key Understanding
Variable-Stores a single value and combined value.
Matrix-Same data type (Rows × Columns).
Array-group of matrices Same data type (Multiple dimensions).
List-Different data types together.
Factor-Stores categories (assigning levels).
Data Frame-Table with different data types having rows and columns.
	  
