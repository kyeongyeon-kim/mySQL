-- 보고싶은 별명으로 지어 줄 수 있다. (생략가능)
SELECT Code AS '코드', Name AS "이름", Population AS "인구" FROM country;
SELECT 10 + 10 AS '더하기 결과';

SELECT Code AS '코드', Name AS "이름", Population AS "인구", '안녕 세상아' FROM country;
-- GNP값 차 구하기
SELECT Code, Name, GNP, GNPOld, GNP - GNPOld 'GNP 변화량' FROM country;

-- 국가(Name), 인구(Population), 면적(SurfaceArea), 인구 / 면적
SELECT Name, Population, SurfaceArea, Population / SurfaceArea '인구 밀도' FROM country;
-- 인구가 0보다 큰 국가들만 (조건 추가하기) 메소드 == 함수 function
SELECT Name, Population, SurfaceArea, ROUND(Population / SurfaceArea, 1) '인구 밀도' 
FROM country
WHERE Population > 0;
-- NULL 값을 다루는 법 (IS, IS NOT)
SELECT Code, Name, GNP, GNPOld, GNP - GNPOld 'GNP 변화량' FROM country
WHERE GNPOld IS NOT NULL;
-- null 특징 (무조건 null 출력)
SELECT NULL + 5;