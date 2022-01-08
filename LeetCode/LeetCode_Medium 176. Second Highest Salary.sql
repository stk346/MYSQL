-- LeetCode: 176. Second Highest Salary
select
    ifnull(
        (select salary
        from Employee
        order by salary desc
        limit 1 offset 1), null) as "SecondHighestSalary"

-- 다른 풀이 (MAx 사용)
SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee
WHERE Salary < (SELECT MAX(Salary)
                FROM Employee)

-- 다른 풀이 (case when 사용)
SELECT 
    CASE 
    WHEN COUNT(DISTINCT(Salary)) <= 1 THEN null 
    ELSE  (select salary from employee order by salary desc limit 1, 1)
    END 
AS SecondHighestSalary 
FROM Employee 