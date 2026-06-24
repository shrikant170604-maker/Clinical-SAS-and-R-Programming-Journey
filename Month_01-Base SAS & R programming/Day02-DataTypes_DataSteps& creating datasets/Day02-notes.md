# Day 2 
## Topic: Basic Introduction + Data Types + DATA Step + creating datasets

### What I Learned:

#### SAS Data Types (Only 2!):
1. NUMERIC → Numbers (Age, Weight, BP)
2. CHARACTER → Text (Name, PatientID, Drug)

#### Rules:
- Numeric = No quotes → AGE = 45;
- Character = Use quotes → NAME = "Raj";
- Missing Numeric = . (dot)
- Missing Character = " " (blank)

#### DATA Step:
- Creates and builds SAS datasets
- Starts with DATA keyword
- Ends with RUN;
- Uses INPUT and DATALINES

#### PROC Step:
- Uses existing datasets
- Displays or analyzes data
- Example: PROC PRINT

### Key Syntax:
DATA dataset_name;
   INPUT var1 $ var2 var3;
   DATALINES;
value1 value2 value3
;
RUN;

### Status: ✅ Complete
