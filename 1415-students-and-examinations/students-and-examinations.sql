with Exam as (select student_id, subject_name, count(1) cn
              from Examinations
              group by 1, 2)
select a.student_id, a.student_name, a.subject_name, if(b.cn is null, 0, b.cn) attended_exams
from 
(select student_id, student_name, subject_name
from Students join Subjects) a left join Exam b on (a.student_id = b.student_id) and (a.subject_name = b.subject_name)
order by 1, 3