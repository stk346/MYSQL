-- LeetCode: 627. Swap Salary
update Salary
set sex =  case sex
    when "m" then "f"
    when "f" then "m"
    end