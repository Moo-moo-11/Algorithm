# [The Blunder](https://www.hackerrank.com/challenges/the-blunder/problem)

Samantha was tasked with calculating the average monthly salaries for all employees in the <strong>EMPLOYEES</strong> table, but did not realize her keyboard's $0$ key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.: $actual-miscalculated$ average monthly salaries), and round it up to the next integer.

<strong>Input Format</strong>

The <strong>EMPLOYEES</strong> table is described as follows:

![Picture](https://s3.amazonaws.com/hr-challenge-images/12893/1443817108-adc2235c81-1.png)

<strong>Note</strong>: Salary is per month.

<strong>Constraints</strong>

$1000\ {\lt}\ Salary\ {\lt}\ 10^5$.

<strong>Sample Input</strong>

![Picture](https://s3.amazonaws.com/hr-challenge-images/12893/1443817161-299cc6eb7f-2.png)

<strong>Sample Output</strong>

<pre><code>2061</code></pre>

<strong>Explanation</strong>

The table below shows the salaries without zeros as they were entered by Samantha:

![Picture](https://s3.amazonaws.com/hr-challenge-images/12893/1443817229-eb00d44a3b-3.png)

Samantha computes an average salary of $98.00$. The actual average salary is $2159.00$.

The resulting error between the two calculations is $2159.00 - 98.00 = 2061.00$. Since it is equal to the integer $2061$, it does not get rounded up.
