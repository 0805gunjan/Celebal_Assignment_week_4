-- HackerRank: https://www.hackerrank.com/challenges/harry-potter-and-wands/submissions

SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property wp ON w.code = wp.code
WHERE wp.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(w1.coins_needed)
    FROM Wands w1
    JOIN Wands_Property wp1 ON w1.code = wp1.code
    WHERE wp1.is_evil = 0
      AND wp1.age = wp.age
      AND w1.power = w.power
)
ORDER BY w.power DESC, wp.age DESC;
