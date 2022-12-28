SELECT hello('WORLD!');
SELECT hellorepeat(3);
SELECT menuId, name, price, IFNULL(restId, 0) FROM my_db.menu;
SELECT menuId, name, price, COALESCE(restId, -1) FROM my_db.menu;
-- restId가 Null일 때 -1로 변환, 아니면(else) 그대로 restId 조회
SELECT menuId, name, price, CASE WHEN restId IS NULL THEN -1 ELSE restId END
FROM my_db.menu;

-- 메뉴 테이블 조회, 추가 컬럼으로 10000원 이상의 메뉴이면 '비쌈', 7000~10000 '적절', 7000미만 '쌈'
SELECT *, CASE WHEN price >= 10000 THEN '비쌈'
				WHEN price >= 7000 THEN '적절'
                ELSE '쌈' END AS '가격평가'
FROM menu;
SELECT * FROM menuview;