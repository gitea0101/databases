-- https://school.programmers.co.kr/learn/courses/30/lessons/59405
-- 가장 먼저 들어온 동물의 이름을 조회하는 SQL 문을 작성
SELECT NAME FROM ANIMAL_INS
WHERE DATETIME IN (SELECT MIN(DATETIME) FROM ANIMAL_INS);