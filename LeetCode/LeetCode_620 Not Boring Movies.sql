-- LeetCode: 620. Not Boring Movies
select *
from Cinema
where MOD(id, 2) = 1 and description != "boring"
order by rating desc