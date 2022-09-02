-- https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 두 마리의 아이디와 이름을 조회
-- 보호 기간이 긴 순으로 조회
SELECT ANIMAL_ID
    , NAME
FROM(
    SELECT ANIMAL_OUTS.ANIMAL_ID
    , ANIMAL_OUTS.NAME
    , DATEDIFF(ANIMAL_OUTS.DATETIME, ANIMAL_INS.DATETIME) A 
    FROM (
        ANIMAL_OUTS INNER JOIN ANIMAL_INS
        ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
        )
    ) AS B
ORDER BY A DESC
LIMIT 2;