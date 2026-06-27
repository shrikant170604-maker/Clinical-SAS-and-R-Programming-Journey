# ============================================================
# DAY 9 - R Basic Mathematical Functions
# Clinical SAS & R Programming Course
# Author: Shrikant Kumar
# Topics: sum, prod, sqrt, log, exp
# ============================================================
1. Introduction to Mathematical Functions in R
R is a powerful statistical programming language that provides built-in mathematical functions for numerical computations. These functions are called base R functions — meaning they are available without loading any external package.

Why are these functions important in Clinical Programming?

✅ Drug concentration calculations
✅ Biomarker data normalization
✅ Statistical computations in trials
✅ Pharmacokinetic modeling
✅ Adverse event rate calculations
✅ Sample size computations

2. The sum() Function:
The sum() function adds all the numeric values provided to it — either as individual numbers or as a vector.

# Example 1: 
sum(10, 20, 30)
# Output: 60
# Explanation: 10 + 20 + 30 = 60

# Example 2: 
x <- c(5, 10, 15, 20, 25)
sum(x)
# Output: 75
# Explanation: Adds all elements of vector x

3. The prod() Function:
The prod() function multiplies all the numeric values provided to it — either as individual numbers or as a vector.

# Example 1: 
prod(2, 3, 4)
# Output: 24
# Explanation: 2 × 3 × 4 = 24

# Example 2: 
x <- c(1, 2, 3, 4, 5)
prod(x)
# Output: 120
# Explanation: 1×2×3×4×5 = 120 (5 factorial)

 4. The sqrt() Function:
The sqrt() function calculates the square root of a number. Square root of x is a number that when multiplied by itself gives x.

# Example 1: 
sqrt(16)
# Output: 4
# Explanation: 4 × 4 = 16

 Example 2: 
sqrt(2)
# Output: 1.414214
# Explanation: 1.414214 × 1.414214 ≈ 2

5. The log() Function:
The log() function computes the logarithm of a number. Logarithm answers the question: "To what power must we raise the base to get this number?"

SYNTAX:
log(x, base = exp(1))
Where,x	Numeric value or vector
base	Base of logarithm. Default = e (natural log)
# Example 1: log of 1
log(1)
# Output: 0
# Explanation: e^0 = 1, so log(1) = 0

# Example 2: log of e^5
log(exp(5))
# Output: 5
# Explanation: log(e^5) = 5
