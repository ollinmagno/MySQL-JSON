use world_x;

select JSON_EXTRACT(doc, '$.geography.Continent') as Continent,
AVG(JSON_EXTRACT(doc, '$.demographics.LifeExpectancy')) as Life_Expectancy, 
SUM(JSON_EXTRACT(doc, '$.demographics.Population')) as Population
from countryinfo group by JSON_EXTRACT(doc, '$.geography.Continent');

select JSON_EXTRACT(doc, '$.geography.Continent') as Continent,
SUM(JSON_EXTRACT(doc, '$.demographics.Population')) as Population,
AVG(JSON_EXTRACT(doc, '$.demographics.LifeExpectancy')) from countryinfo
where JSON_EXTRACT(doc, '$.government.GovernmentForm') LIKE ('%Monarchy%')
AND JSON_EXTRACT(doc, '$.demographics.Population') >= 10000000
GROUP BY JSON_EXTRACT(doc, '$.geography.Continent') order by 2;