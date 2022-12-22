SHOW DATABASES;

USE world;

SHOW TABLES;

-- 행 (row), 열 (Column)
SELECT * FROM country;
-- 내가 보고 싶은 열만 보고싶을 때
SELECT Name, Population FROM country;
-- country 테이블, 에서 Code 열, GNP 열. 조회
SELECT Code, GNP FROM country;
