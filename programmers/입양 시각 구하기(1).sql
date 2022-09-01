-- https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬
SELECT A.*,COUNT(A.HOUR)
FROM(
    SELECT HOUR(DATETIME) AS HOUR
    FROM ANIMAL_OUTS
)AS A
WHERE A.HOUR >= 9 AND A.HOUR <= 19
GROUP BY A.HOUR
ORDER BY A.HOUR;