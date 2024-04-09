# [Employee Salaries](https://www.hackerrank.com/challenges/salary-of-employees/problem)

Write a query that prints a list of employee names (i.e.: the name attribute) for employees in <strong>Employee</strong> having a salary greater than $`{\$2000}`$ per month who have been employees for less than $10$ months. Sort your result by ascending employee_id.

<strong>Input Format</strong>

The <strong>Employee</strong> table containing employee data for a company is described as follows:

![Picture](https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png)

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.

<strong>Sample Input</strong>

![picture](https://s3.amazonaws.com/hr-challenge-images/19629/1458558202-9a8721e44b-ScreenShot2016-03-21at4.32.59PM.png)

<strong>Sample Output</strong>

<pre><code>Angela
Michael
Todd
Joe</code></pre>

<strong>Explanation</strong>

Angela has been an employee for $1$ month and earns $`{\$3443}`$ per month.

Michael has been an employee for $6$ months and earns $`{\$2017}`$ per month.

Todd has been an employee for $5$ months and earns $`{\$3396}`$ per month.

Joe has been an employee for $9$ months and earns $`{\$3573}`$ per month.

We order our output by ascending employee_id.




