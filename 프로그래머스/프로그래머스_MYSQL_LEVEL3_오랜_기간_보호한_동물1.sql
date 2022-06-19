# 프로그래머스 MYSQL LEVEL3. 오랜 기간 보호한 동물(2)
# 주소: https://programmers.co.kr/learn/courses/30/lessons/59411

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_OUTS A
JOIN ANIMAL_INS B
ON A.ANIMAL_ID = B.ANIMAL_ID
ORDER BY A.DateTime - B.DATETIME DESC
LIMIT 2