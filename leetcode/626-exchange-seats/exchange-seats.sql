select case when (select count(1) from Seat)%2=0 then if(id%2=0,id-1,id+1)
       else if(id=(select count(1) from Seat),id,if(id%2=0,id-1,id+1)) end id,
       student
from Seat
order by id
