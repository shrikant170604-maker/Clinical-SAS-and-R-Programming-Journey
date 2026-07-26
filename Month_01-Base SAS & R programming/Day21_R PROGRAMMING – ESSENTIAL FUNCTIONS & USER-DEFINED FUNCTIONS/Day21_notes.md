Day-21
Topic-R PROGRAMMING – ESSENTIAL FUNCTIONS & USER-DEFINED FUNCTIONS
Author-Shrikant Kumar
====================================================================
rep() :-
rep() means repeat. It is used to repeat values a specified number of times.

syntax
rep(x, times/each)
where,
x → value/vector you want to repeat
times → how many times to repeat it
each → repeat each value

#Example 1 — Repeat a vector
x=c(10, 20, 30)
rep(x, times=2)
  or
rep(x,2)

Output:10 20 30 10 20 30
Note: times is the default argument

#Example 2 — Repeat each value
alphabet=c("A", "B", "C")
rep(alphabet, each = 3)

Output: "A" "A" "A" "B" "B" "B" "C" "C" "C"

Easy memory trick:
👉 rep(x, times) = repeat the vector
👉 rep(x, each = 3) = repeat each value

match() :-
match() finds a value in a vector and tells you its position.

Syntax
match(x, table, nomatch = NA_integer_)
Where:
x → value(s) you want to search for
table → vector where you want to search
nomatch → what to return if the value is not found; default is NA [no need to write]

#Example 1
fruits <- c("apple", "banana", "chiku", "mango", "orange")
match(c("orange", "chiku"), fruits)

Output: 5 3

#Example 2
stat <- c(TRUE, FALSE, TRUE, FALSE)

match(FALSE, stat)

Output: 2
NOTE: if you notice in vector stat there are two false but we got only 1 output it is because it returns the first occurrence only.

unique() :-
unique() removes duplicate values and gives only the different values.

#Example 1
alpha <- c("A", "B", "A", "C", "B", "A")
unique(alpha)

Output: "A" "B" "C"

User Defined Function (UDF) :-
A user-defined function is a function that we create ourselves to perform a specific task.

Basic structure
function_name <- function(input) {
  
  # calculation
  
  return(result)
}

#Example 1
square_num <- function(x) {
  result=x^2
  return(result)
}

square_num(5)
Output:25

More Practice Example are available in my GitHub Respirotory
