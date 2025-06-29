-- HackerRank: https://www.hackerrank.com/challenges/african-cities/submissions

SELECT CITY.Name
FROM CITY
JOIN COUNTRY
  ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Africa';