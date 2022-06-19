-- 프로그래머스_MYSQL_LEVEL4_헤비 유저가 소유한 장소
-- https://programmers.co.kr/learn/courses/30/lessons/77487

SELECT A.ID, A.NAME, A.HOST_ID
FROM PLACES A,
(SELECT HOST_ID
         FROM PLACES
         GROUP BY HOST_ID
         HAVING COUNT(*) > 1) B
WHERE A.HOST_ID = B.HOST_ID
ORDER BY ID;