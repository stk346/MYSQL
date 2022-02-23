select distinct(B.continent), floor(avg(A.population))
from city A
join country B
    on A.countrycode = B.code
group by B.continent