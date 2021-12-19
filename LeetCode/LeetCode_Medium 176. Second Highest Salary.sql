-- LeetCode: 176. Second Highest Salary
select
    ifnull(
        (select salary
        from Employee
        order by salary desc
        limit 1 offset 1), null) as "SecondHighestSalary"