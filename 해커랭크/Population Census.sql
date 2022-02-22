select sum(A.population)
from city A
left join country B
    on A.countrycode = B.code
where B.continent = 'Asia'