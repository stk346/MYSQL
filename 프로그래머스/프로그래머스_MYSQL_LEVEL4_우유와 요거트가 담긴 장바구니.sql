프로그래머스_MYSQL_LEVEL4_우유와 요거트가 담긴 장바구니
https://programmers.co.kr/learn/courses/30/lessons/62284

SELECT C.CART_ID
FROM CART_PRODUCTS C, CART_PRODUCTS T
    WHERE C.CART_ID = T.CART_ID
    AND(C.NAME='Milk' AND T.NAME='Yogurt')
ORDER BY C.CART_ID