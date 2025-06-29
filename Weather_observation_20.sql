-- HackerRank: https://www.hackerrank.com/challenges/weather-observation-station-20/submissions

SELECT ROUND(LAT_N, 4)
FROM (
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
           COUNT(*) OVER () AS total
    FROM STATION
) AS ordered
WHERE rn IN (FLOOR((total + 1) / 2), CEIL((total + 1) / 2));
