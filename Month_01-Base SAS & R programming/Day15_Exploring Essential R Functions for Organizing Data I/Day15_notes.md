Day-15
Topic-Exploring Essential R Functions for Organizing Data.
Author-Shrikant Kumar
===================================================================

1.seq() Function:-
seq() creates a series of numbers from a starting value to an ending value having a constant difference or optional length size.

Syntax -
seq(from=, to=, by/length=)

Here we may arise question ?
Q When to use by ?
When you know the gap between numbers, use by
              or
How much should I jump each time?
#Example_1
seq(from=5,to=50,by=5)

Q When to use length ?
When you don't know the gap, but you know how many values you need, use length.
#Example_2
seq(from=5,to=50,length=8)
#Output
[1]  5.00000 11.42857 17.85714 24.28571 30.71429 37.14286 43.57143 50.00000
NOTE:-
R calculated the spacing automatically.
exactly 8 numbers got from R.

Important concepts

by is the default increment
seq(from=2,to=20,by=2) = seq(2,20,2)
Both are Same

seq(from=1,to=50,by=1) = seq(1:50)
Both are Same only when difference is 1

If you want R to generate a specific number of values, you must explicitly mention length.
seq(1,10,length.out=5)

2.diff() Function:-
diff() is used to calculate the difference between consecutive values in a vector.

Syntax -
diff(x,lag=1)
where,
consider x-Input vector.
lag-controls how many positions R skips before finding the difference.
lag = 1 (Default)

#Example_1
Weight=seq(10,50,10)
#Output
10 20 30 40 50

diff(Weight,lag=2)
#Output
20 20 20

For understanding lag this Visualization is provided-

10   20   30   40   50   (30-10)
│         │
└────────►│

20   30   40             (40-20)     Notice that one value is skipped.
│         │
└────────►│

30   40   50             (50-30)
│         │
└────────►│

3.sample() Function:-
sample() randomly selects or shuffles values from a vector and is commonly used for random sampling or randomization in R.

Syntax -
sample(x, n, replace=FALSE/TRUE)
where,
consider x-Vector to sample.
n-Number of random samples to draw.
replace=TRUE- A value can be selected multiple times.[repetition]
replace=FALSE (Default)-A value can be selected only once.[no_repetition]
#Example_1
x=c(9  14  19  24  29  34  39  44  49  54  59  64  69  74  79  84 89  94
    99 104 109 114 119 124 129 134 139 144 149 154 159 164
    169 174 179 184 189 194 199 204 209)
#code
sample(x,10,replace=FALSE)
#Output
99 174  44   9 154 164  19 134  74 199

 #Super Memory Trick
seq() → "Generate a Sequence." 📈
diff() → "Find the Difference." ➖
sample() → "Pick a Random Sample." 🎲

