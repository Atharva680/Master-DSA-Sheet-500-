--select  name , population ,area
--from world
--where population between 25000000 and 38000000

SELECT name,population,area
FROM world
WHERE area >= 3000000 OR population >= 25000000;