-- https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회
-- 보호 시작일 순으로 조회
SELECT ANIMAL_INS.NAME, ANIMAL_INS.DATETIME
FROM
    ANIMAL_INS LEFT JOIN ANIMAL_OUTS
    ON ANIMAL_OUTS.ANIMAL_ID = ANIMAL_INS.ANIMAL_ID
WHERE ANIMAL_OUTS.ANIMAL_ID IS NULL
ORDER BY ANIMAL_INS.DATETIME
LIMIT 3;
