===========================================
             LEVEL-1
===========================================
Part A – Predict the Output (No R Studio)
Q1
x <- 15
y <- 4

x %% y
x %/% y
x / y

Write the outputs in order.

Q2
a <- 5
b <- 5

a == b
a != b
a >= b
a < b

Predict the output.

Q3
TRUE & FALSE
TRUE | FALSE
!TRUE
!FALSE
Part B – Understanding the Function

Without using R Studio, answer these.

Q4

What is the difference between

round(5.5)
ceiling(5.5)
floor(5.5)

Explain in one sentence.

Q5

Which function would you use?

a) Remove the negative sign from a value

b) Multiply every value in a vector

c) Calculate the square root

d) Find the natural logarithm

Part C – Write the Code
Q6

Create a vector named age

25 31 42 56 60
Q7

Create another vector named weight

55.2 63.8 70.5 81.4 68.9
Q8

Without using sum(), calculate the total age using only arithmetic operators.

Part D – Think Like a Programmer

A patient's body temperatures are:

98.6
99.2
100.1
98.9
99.5
Q9

Write R code to store these values in a vector named temp.

Q10

Which function would you use to calculate:

Total temperature?
Average temperature? (If you haven't learned mean() yet, tell me how you would calculate it manually.)
Highest temperature? (Don't worry if you haven't learned the function—just describe your idea.)
🧠 Bonus Logic Challenge (Most Important)

Without running the code, predict the output:

x <- c(10, 20, 30, 40, 50)

x > 25
Then answer this:

Why does R return five TRUE/FALSE values instead of just one?

👉 This single concept—vectorized operations—is one of the most important ideas in R.

🎯 Mentor Challenge (No Coding)

Imagine you're working in a hospital.

You receive the ages of five patients:

22
35
41
19
60

Without writing code, explain how you would instruct a computer to find only the patients who are older than 40.

Don't think about R syntax. Think like you're explaining the steps to a person.

===================================================================================================================
					LEVEL -2
==================================================================================================================

Part A – Predict the Output
Q1
x <- c(5,10,15,20,25)

length(x)

sum(x)

prod(c(1,2,3))

Write the outputs only.

Q2

Predict the output.

x <- c(12,24,36,48)

sqrt(x)
Q3
round(8.567,2)

ceiling(8.001)

floor(8.999)

abs(-25.75)

Predict the outputs.

Part B – Vector Logic
Q4

Create a vector named bp containing:

120 135 118 142 128
Q5

Without using sum(), calculate the total BP using arithmetic operators.

Q6

Without using mean(), calculate the average BP.

(Hint: Use the total and divide by the number of observations.)

Part C – Choose the Correct Function

Which function would you use?

Q7

a) Randomly select 5 patients from 100.

b) Create numbers from 10 to 100 with a gap of 10.

c) Create exactly 8 numbers between 10 and 100.

d) Find the difference between consecutive blood pressure readings.

e) Remove the negative sign from BMI values.

Part D – Think Before Coding

A clinical trial has 10 patients.

Patient IDs:

101 102 103 104 105 106 107 108 109 110
Q8

Write R code to store these IDs in a vector named patient_id.

Q9

You need to randomly select 3 patients for a quality check.

Which function will you use?

Write the code.

Part E – Debugging Challenge
Q10

Find all the mistakes in this code.

age = c(20 25 30 35)

sum(age

print("Total Age")

Write the corrected code.

⭐ Bonus Challenge (Vector Thinking)

Predict the output:

x <- c(2,4,6,8,10)

x %% 4

Explain why each output appears.

🏥 Clinical Thinking Challenge

A hospital records the temperatures of five patients:

98.6
99.8
101.2
100.5
98.9

Without using any code, explain:

How would you find the highest temperature?
How would you find the average temperature?
If one temperature was entered as -99.8 by mistake, which function from your syllabus would help correct it?
🎯 Mentor's Special Challenge (Most Important)

This question has no coding.

Imagine I take away your keyboard.

I ask:

"What is a vector?"

Don't give me the textbook definition.

Explain it as if you're teaching a 10-year-old child using a real-life example.

===================================================================================================================
					LEVEL -3
==================================================================================================================
A hospital conducted a screening camp for 15 patients.

patient_id <- 101:115

age <- c(22,45,61,34,58,29,67,41,52,38,73,26,49,55,60)

weight <- c(52,68,71,60,75,55,80,66,72,58,83,54,69,77,74)
Task 1

The doctor wants the IDs of patients whose age is 60 years or above.

Return only those Patient IDs.

Task 2

The dietitian wants the weights of patients who are older than 50.

Return only those weights.

Task 3

Find the average weight of all patients.

Task 4

Sort the patient ages in descending order.

Task 5

The hospital accidentally entered the following weights:

weight <- c(52,-68,71,60,-75,55,80,-66,72,58,83,54,-69,77,74)

Correct the dataset.

🧪 Clinical Scenario 2

The trial collected drug codes.

drug <- c("A","B","A","C","D","B","A","E","C","D","A","B","F","E","A")
Task 6

Display all unique drugs.

Task 7

How many different drugs were used in the trial?

Task 8

Sort the drug codes alphabetically.

🏥 Clinical Scenario 3

Blood pressure readings were recorded in the following order:

bp <- c(120,118,122,130,128,135,132,140)
Task 9

Find the difference between consecutive readings.

Task 10

A physician says:

"Show me every blood pressure reading above 125."

Return only those readings.

🔥 Interview Challenge

Without creating a new vector manually,

return the Patient IDs of all patients whose weight is greater than 70 kg.
===================================================================================================================
					LEVEL -4
==================================================================================================================
A clinical trial collected the following subject information.

subject <- c("SUB001","SUB002","SUB003","SUB004","SUB005",
             "SUB006","SUB007","SUB008","SUB009","SUB010")

age <- c(25,62,48,71,35,55,67,29,60,44)

sex <- c("M","F","F","M","M","F","M","F","F","M")

weight <- c(58,74,63,81,69,72,79,55,76,68)

treatment <- c("DrugA","DrugB","DrugA","DrugA","DrugB",
               "DrugB","DrugA","DrugA","DrugB","DrugA")
Task 1

Return the Subject IDs of all patients receiving DrugA.

Task 2

Return the ages of all female patients.

Task 3

Return the weights of all subjects older than 50.

Task 4

Return the Subject IDs of patients who satisfy both conditions:

Age ≥ 60
Weight ≥ 75
Task 5

Return the Subject IDs of all male patients receiving DrugA.

Task 6

Sort the weight vector from highest to lowest.

Task 7

Return only the unique treatment groups.

Task 8

How many treatment groups are present?

🏥 Clinical Programming Scenario

The Clinical Data Manager asks:

"I only want female patients who are older than 50 and are receiving DrugB."

Return only their Subject IDs.

🧪 Data Validation Scenario

The following ages were entered into the database:

age2 <- c(25,62,-48,71,-35,55,67,-29,60,44)

Correct the dataset.

🔍 Programming Challenge

Without creating a new vector manually,

return the Subject IDs of every patient whose weight is between 70 and 80 kg (inclusive).

💼 Interview Challenge

Your manager says:

"Generate a report containing only the Subject IDs of patients who satisfy at least one of the following conditions:

Age greater than 65
Weight greater than 75"

Write the R code.

================================================================================================================
SOLUTION       SOLUTION		SOLUTION		SOLUTION		SOLUTION	SOLUTION
==================================================================================================================
#======== LEVEL 1 ==============#
#======= part A - predict output =#

#Q1:
x<-(-15)
y<-4

x%%y
x%/%y
x/y

#Q2:
a<-5
b<-5
a==b
a!=b
a>=b
a<b

#Q3:
TRUE & FALSE
TRUE | FALSE
!TRUE
!FALSE
#part b
#Q4:
"round helps to know the nearest roundoff no and ceiling helps to know integer above number and floor helps to know the down integer value of given no"
#Q5:
Q5a="absolute-abs()"
Q5b="prod()or i can use this symbol '*' "
Q5c="using sqrt()"
Q5d="using log()"

#Part-C
#Q6:
age=c(25,31,42,56,60)
#Q7:
weight=c(55.2,63.8,70.5,81.4,68.9)
#Q8:
total_age=(25+31+42+56+60)

#Part- D 
#Q9:
temp=c(98.6,99.2,100.1,98.9,99.5)
#Q10:
#sum
#totally add manually using arithmetic operators devided by total no of given temp
#using max() function
#Bonous Question
x<-c(10, 20, 30, 40, 50)
x>25
# 5 true/false will come because in variavle x there are 5 values r is checking x is greater than 25
mentor challenge : i will each variable which is greater than 40

#======== Level 2 =============
#PART-A
#Q1:
x <- c(5,10,15,20,25)
length(x)
sum(x)
prod(c(1,2,3))
#Q2:
x <- c(12,24,36,48)
sqrt(x)
#q3:
round(8.567,2)
ceiling(8.001)
floor(8.999)
abs(-25.75)

#PART-B
#Q4:
bp=c(120,135,118,142,128)
#q5:
total_bp=(120+135+118+142+128)
mean_bp=(120+135+118+142+128)/5

#PART-C
#Q7:
q7a=sample(1:100,5)
Q7b=seq(10,100,10)
Q7c=seq(10,100,length=8)
Q7d=diff(bp,lag=1)
Q7e=abs(Q7d)

#PART_D
#Q8
patient_id=C(101,102,103,104,105,106,107,108,109,110)
#Q9
#i will use sample ()function
sample(patient_id,3)

#PART_E
#Q10:
age = c(20 25 30 35)
sum(age)
print(age)

#bonous challange
#x has total 5 values stored and here each value is devided by 4 to get some remainder

#clinical thinking challange
max()
mean()
which()

#mentor special challange
a place where we store some data and give some name known as vector
#LEVEL-3
patient_id <- 101:115

age <- c(22,45,61,34,58,29,67,41,52,38,73,26,49,55,60)

weight <- c(52,68,71,60,75,55,80,66,72,58,83,54,69,77,74)
#task1
which(age>=60)
patient_id[which(age>=60)]
#task2
weight[which(age>50)]
#task3
mean(weight)
#task4
sort(age,decreasing = TRUE)
#task5
weight <- c(52,-68,71,60,-75,55,80,-66,72,58,83,54,-69,77,74)
abs(weight)

drug <- c("A","B","A","C","D","B","A","E","C","D","A","B","F","E","A")
#task6
unique(drug)
#task7
length(unique(drug))
#task8
sort(drug)

bp <- c(120,118,122,130,128,135,132,140)
#task9
diff(bp,lag=1)
#task10
bp>125
bp[bp>125]
#interview challange
patient_id[weight>70]

#Level 4
subject <- c("SUB001","SUB002","SUB003","SUB004","SUB005",
             "SUB006","SUB007","SUB008","SUB009","SUB010")

age <- c(25,62,48,71,35,55,67,29,60,44)

sex <- c("M","F","F","M","M","F","M","F","F","M")

weight <- c(58,74,63,81,69,72,79,55,76,68)

treatment <- c("DrugA","DrugB","DrugA","DrugA","DrugB",
               "DrugB","DrugA","DrugA","DrugB","DrugA")
#task1
subject[treatment=="DrugA"]
#task2
age[sex=="F"]
#task3
weight>50
#task4
subject[age>=60 & weight>=75]
#task5
subject[sex=="M" & treatment=="DrugA"]
#task6
sort(weight,decreasing=TRUE)
#task7
unique(treatment)
#task8
length(unique(treatment))

#clinical programing scenario
subject[sex=="F" & age>50 & treatment=="DrugB"]

#data validation scenario
age2 <- c(25,62,-48,71,-35,55,67,-29,60,44)
abs(age2)

#programming challange
subject[weight>70 & weight<80]

#interview challange
subject_id=subject[age>65 ]
subject_id=subject[age>75 ]

