-- LeetCode: 262. Trips and Users

select t.request_at "Day",
         cast(sum(case when t.status != "completed" then 1.00 else 0.00 end)/count(*) as decimal(10,2)) as "Cancellation Rate"
from Trips t
join Users u1
    on t.client_id = u1.users_id and u1.banned = "No"
join Users u2
    on t.driver_id = u2.users_id and u2.banned = "No"
where t.request_at between "2013-10-01" and
                           "2013-10-03"
group by t.request_at