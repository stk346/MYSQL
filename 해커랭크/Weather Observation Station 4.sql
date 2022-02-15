select C.Unique
from (select count(city) A, count(distinct city) B, count(city)-count(distinct city) "Unique"
      from station) C