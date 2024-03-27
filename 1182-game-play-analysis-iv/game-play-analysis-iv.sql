select round(count(distinct player_id)/(select count(distinct player_id) from Activity), 2) fraction
from Activity
where (player_id, event_date) in (select player_id,
                                  min(DATE_ADD(event_date, INTERVAL 1 DAY)) next_date
                                  from Activity
                                  group by player_id)