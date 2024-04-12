# [Top Earners](https://www.hackerrank.com/challenges/earnings-of-employees/problem)

We define an employee's total earnings to be their monthly $salary\ ×\ months$ worked, and the maximum total earnings to be the maximum total earnings for any employee in the <strong>Employee</strong> table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as $2$ space-separated integers.

<strong>Input Format</strong>

The <strong>Employee</strong> table containing employee data for a company is described as follows:

![Picture](https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png)

where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

<strong>Sample Input</strong>

![Picture](https://s3.amazonaws.com/hr-challenge-images/19631/1458559098-23bf583125-ScreenShot2016-03-21at4.32.59PM.png)

<strong>Sample Output</strong>

<pre><code>69952 1</code></pre>

<strong>Explanation</strong>

The table and earnings data is depicted in the following diagram:

![Picture](https://s3.amazonaws.com/hr-challenge-images/19631/1458559218-9f37585c7a-ScreenShot2016-03-21at4.49.23PM.png)

The maximum earnings value is $66952$. The only employee with earnings $= 66952$ is Kimberly, so we print the maximum earnings value ($66952$) and a count of the number of employees who have earned $`{\$66952}`$ (which is $1$) as two space-separated values.
