-- 특정 열을 기준으로 오름(ASC), 내림차순(DESC) 하는 방법
SELECT Code, Name, Population 
FROM country WHERE Population <> 0
ORDER BY Population DESC;


-- LifeExpectancy 오름차순 조회
SELECT Name, LifeExpectancy 
FROM country 
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy;

-- Name, Population, SurfaceArea, Population / SurfaceArea (인구밀도) 인구밀도의 내림차순으로 정렬
-- ``이름 표현 법
SELECT `Name`, `Population`, `SurfaceArea`, round(Population / SurfaceArea, 2) '인구밀도'
FROM country WHERE Population <> 0
ORDER BY `인구밀도` DESC;
