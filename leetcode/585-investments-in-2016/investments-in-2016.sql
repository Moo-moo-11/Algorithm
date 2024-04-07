select round(sum(tiv_2016),2) tiv_2016
from Insurance i
where (select count(tiv_2015) from Insurance where tiv_2015 = i.tiv_2015) >= 2 and
      (select count(concat(lat, "+", lon)) from Insurance where concat(lat, "+", lon) = concat(i.lat, "+", i.lon)) = 1
