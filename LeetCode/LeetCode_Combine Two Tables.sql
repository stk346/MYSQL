-- LeetCode: Combine Two Tables

select firstName, lastName, city, state
from Person a left join Address b
    on a.PersonId = b.PersonId