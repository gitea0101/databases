-- https://school.programmers.co.kr/learn/courses/30/lessons/62284
SELECT C.CART_ID
FROM
    (SELECT B.CART_ID, COUNT(B.Milk) AS CM, COUNT(B.Yogurt) AS CY
    FROM
        (SELECT CART_ID
            ,CASE
            WHEN NAME = 'Milk' THEN 'Milk'
            END AS Milk
            ,CASE
            WHEN NAME = 'Yogurt' THEN 'Yogurt'
            END AS Yogurt
        FROM CART_PRODUCTS         
        ) AS B
    GROUP BY B.CART_ID) AS C
WHERE CM >0 AND CY >0
;