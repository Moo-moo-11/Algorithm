# [Weather Observation Station 5](https://www.hackerrank.com/challenges/weather-observation-station-5/problem)

Query the two cities in <strong>STATION</strong> with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The <strong>STATION</strong> table is described as follows:

![Picture](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where <strong>LAT_N</strong> is the northern latitude and <strong>LONG_W</strong> is the western longitude.

<strong>Sample Input</strong>

For example, <strong>CITY</strong> has four entries: <strong>DEF</strong>, <strong>ABC</strong>, <strong>PQRS</strong> and <strong>WXY</strong>.

<strong>Sample Output</strong>

<pre><code>ABC 3
PQRS 4</code></pre>

<strong>Explanation</strong>

When ordered alphabetically, the <strong>CITY</strong> names are listed as <strong>ABC</strong>, <strong>DEF</strong>, <strong>PQRS</strong>, and <strong>WXY</strong>, with lengths $3,3,4,$ and $3$. The longest name is <strong>PQRS</strong>, but there are $3$ options for shortest named city. Choose <stong>ABC</strong>, because it comes first alphabetically.

<strong>Note</strong>

You can write two separate queries to get the desired output. It need not be a single query.
