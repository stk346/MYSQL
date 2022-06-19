-- LeetCode: 601. Human Traffic of Stadium

select distinct s1.*
from Stadium s1
join Stadium s2 join Stadium s3
on+
    (s1.id = s2.id -1 and s1.id = s3.id -2) or -- s1.id가 가장 작음
    (s1.id = s2.id +1 and s1.id = s3.id -1) or -- s1.id가 두번째로 작음
    (s1.id = s2.id +2 and s1.id = s3.id +1)    -- si.id가 가장 큼
where s1.people >= 100 and s2.people >= 100 and s3.people >= 100
order by s1.visit_date asc