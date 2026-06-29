# ============================================================
# DAY 10- R Basic Mathematical Functions
# Clinical SAS & R Programming Course
# Author: Shrikant Kumar
# Topics: round,ceiling,floor
# ============================================================
1. Introduction to Mathematical Functions in R
continue

6.The round() Function:
The round() function rounds a number to a specified number of decimal places. It follows the standard mathematical rounding rule:

If digit after rounding position is ≥ 5 → Round UP
If digit after rounding position is < 5 → Round DOWN# 

Syntax:
round(x, digits = 0)

Example 1: 
Round to 0 decimal places (integer) ----
round(3.4)          # Output: 3   (4 < 5, round down)
round(3.5)          # Output: 4   (5 >= 5, round up)

Example 2: 

Round to 2 decimal places ----
round(3.14159, 2)   # Output: 3.14  (1 < 5, round down)
round(3.14559, 2)   # Output: 3.15  (5 >= 5, round up)

📌 Clinical Application of round()
# Drug dosage reporting
# Rounding lab values for CSR table
# BMI reporting (standard: 1 decimal place)

7.The ceiling() Function:
The ceiling() function always rounds UP to the nearest integer, regardless of the decimal value. Even if the decimal is 0.0001, it still rounds up.

Syntax:
ceiling(x)
x can be Numeric value or vector.

Example 1: 
ceiling(3.0001)     # Output: 4   (even tiny decimal → rounds UP)
ceiling(3.1)        # Output: 4   (goes to next integer above)
ceiling(4.0001)     # Output: 5   (goes to next integer above)

📌 Clinical Application of ceiling()
# Sample Size Calculation
# Number of visits calculation
# Drug supply planning (boxes_to_order)
# Ceiling for age groups

 8.The floor() Function:
The floor() function always rounds DOWN to the nearest integer, regardless of the decimal value. Even if the decimal is 0.9999, it still rounds down.

Syntax:
floor(x)
x can be Numeric value or vector.

Example 1: 
floor(3.0001)       # Output: 3   (rounds DOWN to 3)
floor(3.9999)       # Output: 3   (rounds DOWN to 3)
floor(4.0001)       # Output: 4   (rounds DOWN to 4)

📌 Clinical Application of floor()
#Patient Age Calculation (Age = COMPLETED years)
#Weeks of treatment completed
#Drug dosage (floor to avoid overdose)
#Age grouping

key takeaway
ceiling() → 🔼 ALWAYS UP   → Think: Ceiling is above you
floor()   → 🔽 ALWAYS DOWN → Think: Floor is below you
round()   → ↕️ NEAREST     → Think: Normal school rounding
