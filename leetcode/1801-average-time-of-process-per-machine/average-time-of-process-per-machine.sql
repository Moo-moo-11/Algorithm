select machine_id, round(avg(time), 3) processing_time
from
(
select machine_id, process_id, sum(if(activity_type = 'start', -timestamp, timestamp)) time
from Activity
group by 1, 2
) a
group by 1
