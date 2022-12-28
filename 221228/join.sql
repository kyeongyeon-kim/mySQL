-- 테이블 결합 (우측 결합) 붙이고자하는 테이블 이름을 적어준다.
SELECT * FROM restaurant;
SELECT * FROM restaurant JOIN menu;
SELECT * FROM restaurant, menu;

SELECT * FROM menu;
-- 결합 후 모두 조회
SELECT * FROM restaurant AS A
LEFT OUTER JOIN menu AS B ON A.no = B.restId;
-- 메뉴가 없는 식당은 조회가 되지않음
SELECT * FROM restaurant
INNER JOIN menu ON restaurant.no = menu.restId;

SELECT * FROM restaurant
RIGHT OUTER JOIN menu ON restaurant.no = menu.restId;

SELECT * FROM menu;
DESC menu;