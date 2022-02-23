select A.name
from city A
left join country B
    on A.countrycode = B.code
where B.continent = 'Africa'