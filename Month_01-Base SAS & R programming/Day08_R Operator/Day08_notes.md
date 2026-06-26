#R OPERATORS
#Arithmetic · Assignment · Comparison · Logical

🌟 WHAT IS AN OPERATOR?
Think of an operator like a mathematical symbol in a prescription pad.

When you write Dose = 500mg × 2 tablets → × is an operator
It performs an action between two values
In R, operators are symbols that tell R what operation to perform on data.

1: ARITHMETIC OPERATORS
Operator	Name	              Symbol	Example 	Result
Exponential	Power/Exponent	        ^   	 2^3	          8
Division	Divide	                /	 15 / 4	          3.75
Multiplication	Multiply	        *	 6 * 4	          24
Addition	Add two numbers 	+	 5 + 3	          8
Subtraction	Subtract	        -	 10 - 4	          6
Remainder	Modulus/leftover        %%	 15 %% 4	  3
Integer Divide	nearest complete no.    %/%	 15 %/% 4	  3

2: ASSIGNMENT OPERATORS
In R, you can assign values using THREE methods:

Operator  Name	         Direction	        Example
<-	  Left Arrow	Value goes LEFT	        x <- 10
->	  Right Arrow	Value goes RIGHT	10 -> x
=	  Equals	Standard assignment	x = 10

3: COMPARISON OPERATORS
 Comparing two values and getting TRUE or FALSE answer

Operator		Meaning	R 		Symbol		Example		Result
Equal to		Are both values same?	==	  	5 == 5		TRUE
Not equal to		Are they different?	!=	 	5 != 3		TRUE
Less than		Is left smaller?	<	  	3 < 5		TRUE
Greater than		Is left bigger?		>	  	8 > 5		TRUE
Less than or equal	Smaller or same?	<=	  	5 <= 5		TRUE
Greater than or equal	Bigger or same?		>=	  	6 >= 5		TRUE

 4: LOGICAL OPERATORS
Think of it as: Combining multiple TRUE/FALSE conditions

Operator	Name		Symbol		Meaning			Example
AND	Both must be TRUE	& or &&		Both conditions true	TRUE & FALSE = FALSE
OR	At least one TRUE	| or ||		Either condition true	TRUE | FALSE = TRUE
NOT	Flip TRUE/FALSE		!		Reverses the result	!TRUE = FALSE


 TRUTH TABLE (Very Important for understanding):
A	B	A & B (AND)	A | B (OR)	!A (NOT A)
TRUE	TRUE	TRUE		TRUE		FALSE
TRUE	FALSE	FALSE		TRUE		FALSE
FALSE	TRUE	FALSE		TRUE		TRUE
FALSE	FALSE	FALSE		FALSE		TRUE


COMMON BEGINNER MISTAKES
❌ Mistake			✅ Correct			💡 Explanation
x = 5 for comparison		x == 5	= assigns,		 == compares
5 / 2 expecting integer		Use 5 %/% 2			Regular / gives decimal
!TRUE & FALSE confusion		Use (!TRUE) & FALSE		Use brackets to be clear
x <- TRUE then x = FALSE	Use <- consistently		Don't mix assignment styles
15 % 4 for remainder		15 %% 4				In R, modulus is %% not %
2 ** 3 for power		2^3				Both work but ^ is more R-like

TODAY'S KEY LEARNING
R has 4 operator families: Arithmetic, Assignment, Comparison, Logical.
%% = remainder · %/% = integer quotient · / = normal division.
Assignment: use <-. = stores, == compares — never mix them.




