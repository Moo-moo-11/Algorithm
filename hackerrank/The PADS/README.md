# [The PADS](https://www.hackerrank.com/challenges/the-pads/problem)

Generate the following two result sets:
1. Query an alphabetically ordered list of all names in <strong>OCCUPATIONS</strong>, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: <code>AnActorName(A)</code>, <code>ADoctorName(D)</code>, <code>AProfessorName(P)</code>, and <code>ASingerName(S)</code>.
2. Query the number of ocurrences of each occupation in <strong>OCCUPATIONS</strong>. Sort the occurrences in ascending order, and output them in the following format: 

<pre><code>There are a total of [occupation_count][occupation]s.</code></pre>

where <code>[occupation_count]</code> is the number of occurrences of an occupation in <strong>OCCUPATIONS</strong> and <code>[occupation]</code> is the lowercase occupation name. If more than one Occupation has the same <code>[occupation_count]</code>, they should be ordered alphabetically.

<strong>Note:</strong> There will be at least two entries in the table for each type of occupation.

<strong>Input Format</strong>

The <strong>OCCUPATIONS</strong> table is described as follows:

![Picture](https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png)

Occupation will only contain one of the following values: <strong>Doctor</strong>, <strong>Professor</strong>, <strong>Singer</strong> or <strong>Actor</strong>.

<strong>Sample Input</strong>

An <strong>OCCUPATIONS</strong> table that contains the following records:

![Picture](https://s3.amazonaws.com/hr-challenge-images/12889/1443816608-0b4d01d157-2.png)

<strong>Sample Output</strong>

<pre><code>Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.</code></pre>

<strong>Explanation</strong>

The results of the first query are formatted to the problem description's specifications.

The results of the second query are ascendingly ordered first by number of names corresponding to each profession ($2\ {\leq}\ 2\ {\leq}\ 3\ {\leq}\ 3$), and then alphabetically by profession ($doctor\ {\leq}\ singer$, and $actor\ {\leq}\ professor$).
