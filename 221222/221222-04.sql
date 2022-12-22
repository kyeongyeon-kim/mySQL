-- 특정한 행만 찾기
SELECT * FROM country WHERE Name = 'South Korea';
-- country 테이블의 Name 컬럼 값이 'Japan'인 행의 모든 컬럼 조회하기alter
SELECT * FROM country WHERE Name = 'Japan';
SELECT * FROM country WHERE Continent = 'Asia';

-- 한 중 일 3행 조회하기
SELECT * FROM country WHERE Name = 'South Korea' OR Name = 'China' OR Name = 'Japan';
SELECT * FROM country WHERE Name IN ('South Korea', 'China', 'Japan');

-- Population 컬럼 값이 40,000,000 이상인 국가 조회하기(모든 컬럼)
SELECT * FROM country WHERE Population >= 40000000;
-- 인구 40,000,000 이상 50,000,000 이하
SELECT * FROM country WHERE Population >= 40000000 AND Population <= 50000000;
SELECT * FROM country WHERE Population BETWEEN 40000000 AND 50000000;

-- Continent 컬럼 값이 Asia, North America를 제외한 국가들 조회
SELECT * FROM country WHERE Continent <> 'Asia' AND Continent <> 'North America';
SELECT * FROM country WHERE Continent NOT IN ('Asia', 'North America');
-- GNP 값의 100 ~ 1000 범위가 아닌 국가들 조회
SELECT * FROM country WHERE GNP NOT BETWEEN 100 AND 1000;

-- Continent Asia, North America, Europe을 제외한 국가들 중
-- 인구가 10,000,000 이상인 국가들 조회
SELECT * FROM country
	WHERE Continent NOT IN ('Asia', 'North America', 'Europe') 
	AND Population >= 10000000;