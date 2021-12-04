-- LeetCode: Employees Earning More Than Their Managers
select
    a.Name AS "Employee"
from Employee a,
     Employee b
where
    a.ManagerId = b.Id
        and a.Salary > b.Salary
;