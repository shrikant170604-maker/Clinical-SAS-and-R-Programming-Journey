Exploring Essential R Functions/Operators for Organizing Data.
4.sort() Function:-
The sort() function is used to arrange the elements of a vector in a specific order.

Syntax:
sort(x, decreasing = FALSE/TRUE)
Where,
x-Vector to be sorted
decreasing=FALSE [To arrange in Ascending order (default)]
decreasing=TRUE [To arrange in Descending order]

#EXAMPLE_1
age=c(45, 28, 63, 37, 19)
sort(age)
#Output
19 28 37 45 63 
NOTE: Here no's are arranged in ascending order, without using decreasing=FALSE because
Since decreasing=FALSE is the default, we don't need to mention it

#EXAMPLE_2
age=c(45, 28, 63, 37, 19)
sort(age,decreasing=TRUE)
#Output
63 45 37 28 19 
NOTE: Here no's are arranged in descending order.

Important Special Operator
Square Brackets [] (Indexing):-
[] are special operators in R used to access, extract, or select one or more elements from a stored vector.

Syntax:
object[position]
where,
object = vector, matrix, list, or data frame
position = location of the element you want

#EXAMPLE_1
numbers=c(10,20,30,40,50)
numbers[2] <------Extract One Value
#Output
20

#EXAMPLE_2
numbers[c(2,5)] <------Extract Multiple Values
#Output
20 50

#EXAMPLE_3 [Logical Indexing]
We want only numbers divisible by 5.
x=c(12,15,18,20,25)

Step 1 – Find the Remainder

x %% 5
#Output- 2 0 3 0 0

Step 2 – Check Which Are Divisible

x %% 5 == 0
#Output- FALSE TRUE FALSE TRUE TRUE

Step 3 – Use Square Brackets
x[x %% 5 == 0]
#Output- 15 20 25

NOTE: Square brackets keep only the values where the condition is TRUE.
So R returns 15 20 25 This is called Logical Indexing.

#EXAMPLE_4
Extract Numbers Divisible by Both 5 and 6
Consider,
numbers=c(10, 15, 24, 30, 36, 45, 60, 72, 90, 120)

Step 1: Check Divisibility by 5

numbers %% 5 == 0
#Output TRUE TRUE FALSE TRUE FALSE TRUE TRUE FALSE TRUE TRUE

Step 2: Check Divisibility by 6

numbers %% 6 == 0
#Output FALSE FALSE TRUE TRUE TRUE FALSE TRUE TRUE TRUE TRUE

Step 3: Check Divisibility by Both 5 and 6
In R, the AND (&) logical operator, means both conditions must be TRUE.

(numbers %% 5 == 0) & (numbers %% 6 == 0)
#Output FALSE FALSE FALSE TRUE FALSE FALSE TRUE FALSE TRUE TRUE

Step 5: Use Logical Indexing

numbers[(numbers %% 5 == 0) & (numbers %% 6 == 0)]
#Output 30 60 90 120

NOTE: Square brackets keep only the values where the condition is TRUE.

Key Understandings
sort() is used to arrange the elements of a vector.
By default, sort() arranges data in ascending order.
Use decreasing = TRUE to arrange data in descending order.
Square brackets [] are used to access, extract, or filter elements from a vector.
x[position] extracts element(s) based on their position (index).
x[condition] returns only the values for which the condition is TRUE.

📚 Day 15 & Day 16 Mixed Practice Questions
Question 1

Generate a sequence from 10 to 100 with an interval of 10.

Question 2

Generate 20 random numbers between 1 and 100.

Question 3

Arrange the generated random numbers in:

Ascending order
Descending order
Question 4

Extract only the:

3rd element
8th element
15th element
Question 5

Extract all numbers greater than 50.

Question 6

Extract all numbers less than 25.

Question 7

Extract only the even numbers.

Question 8

Extract only the odd numbers.

Question 9

Extract numbers divisible by 3.

Question 10

Extract numbers divisible by 5.

Question 11

Extract numbers divisible by 2 and 5.

Question 12

Extract numbers divisible by 3 and 4.

Question 13

Extract numbers divisible by 2, 3, and 5.

Question 14

Extract numbers greater than 30 but less than 80.

Question 15

Extract numbers that are greater than 40 and divisible by 5.

Question 16

Generate 50 random patient ages between 18 and 80.

Find:

Patients older than 60
Patients younger than 30
Patients divisible by 2
Patients divisible by 5
Patients divisible by both 2 and 5
Question 17

Generate 40 random blood pressure values between 90 and 180.

Find:

BP > 140
BP < 100
BP divisible by 10
Highest BP
Lowest BP
Question 18

Generate 30 random glucose values between 70 and 200.

Perform:

Sort ascending
Sort descending
Extract values above 140
Extract values below 90
Extract values divisible by 5
Question 19

Using

x <- c(15, 20, 18, 30, 45, 60, 75, 80)

Find:

Difference between consecutive values
Values divisible by 5
Values divisible by both 3 and 5
Values greater than 40
Arrange in descending order
Question 20

Generate 100 random patient IDs between 1000 and 9999.

Find:

IDs ending in 5
IDs ending in 0
IDs divisible by 2
IDs divisible by 5
IDs divisible by 2 and 5
Arrange IDs in ascending order
🔥 Clinical Scenario Questions
Question 21

A clinical trial has 60 patients.

Generate random ages between 18 and 75.

Find:

Elderly patients (>60)
Adult patients (18–59)
Ages divisible by 5
Ages divisible by both 2 and 5
Arrange the ages from youngest to oldest.

solutions:-
#practice questions
#q1
seq(10,100,10)
#q2
r_20=sample(1:100,20)
r_20
#q3a
asc=sort(r_20)
#q3b
des=sort(r_20,decreasing=TRUE)
#4
asc[3]
des[8]
des[15]
#q5
g_50=des[des>50]
g_50
des
#q6
l_25=des[des<25]
l_25
#q7
des[des%%2==0]
des%%2
des%%2==0
des[des%%2==0]
#q8
des[des%%2==1]
#q9
des[des%%3==0]
#q10
des[des%%5==0]
#q11
des[des%%2==0 & des%%5==0]
#q12
des[des%%3==0&des%%4==0]
#q13
des[des%%2==0&des%%3==0&des%%5==0]
#q14
des[des>30&des<80]
#q15
des[des>40&des%%5==0]
#q16
r_50=sample(18:80,50)
r_50
#16a
r_50[r_50>60]
#16b
r_50[r_50<30]
#16c
r_50[r_50%%2==0]
#16d
r_50[r_50%%5==0]
#16e
r_50[r_50%%2==0&r_50%%5==0]
#q17
r_bp=sample(90:180,40)
#17a
r_bp[r_bp>140]
#17b
r_bp[r_bp<100]
#17c
r_bp[r_bp%%10==0]
#17d
max(r_bp)
#17e
min(r_bp)
#q18
glucose30_value=sample(70:200,30)
#18a
sort(glucose30_value)
#18b
sort(glucose30_value,decreasing = TRUE)
#18c
glucose30_value[glucose30_value>140]
#18d
glucose30_value[glucose30_value<90]
#18e
glucose30_value[glucose30_value%%5==0]
#q19
x=c(15, 20, 18, 30, 45, 60, 75, 80)
#19a
diff(x)
#19b
x[x%%5==0]
#19c
x[x%%3==0&x%%5==0]
#19d
x[x>40]
#19e
sort(x,decreasing = TRUE)
#q20
r100_id=sample(1000:9999,100)
#20a
r100_id[r100_id%%10==5]
#20b
r100_id[r100_id%%10==0]
#20c
r100_id[r100_id%%2==0]
#20d
r100_id[r100_id%%5==0]
#20e
r100_id[r100_id%%2==0&r100_id%%5==0]
#20f
sort(r100_id)

#clinical scenario questions
#q21
r60_patients=sample(18:79,60)
r60_patients
#21a
r60_patients[r60_patients>60]
#21b
r60_patients[r60_patients>=18&r60_patients<=59]
#21c
r60_patients[r60_patients%%5==0]
#21d
r60_patients[r60_patients%%2==0&r60_patients%%5==0]
#21e
sort(r60_patients)




