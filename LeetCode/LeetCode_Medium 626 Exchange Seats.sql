-- LeetCode: 626. Exchange Seats

select (case
        when mod(id, 2) = 1 and id != count then id +1
        when mod(id, 2) = 1 and id = count then count
        else id -1
        end) as id, student
from Seat,
(select count(*) as count
from Seat) as seat_counts
order by id asc;