-- HackerRank: https://www.hackerrank.com/challenges/weather-observation-station-19/submissions/code/437626996

SELECT ROUND(
    SQRT(POWER(MAX(LAT_N) - MIN(LAT_N), 2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)),
    4
) AS Distance
FROM STATION;