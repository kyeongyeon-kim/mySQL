-- 조회결과 제한 LIMIT, 건너뛰기 OFFSET
SELECT * FROM country ORDER BY Population DESC LIMIT 10 OFFSET 20;

-- SurfaceArea 면적이 큰 탑 5개 국가 조회
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5;

-- Continent 'Asia' 국가 중 면적이 좁은 탑 10개 국가
SELECT Continent, Name, SurfaceArea FROM country 
WHERE Continent = 'Asia'
ORDER BY SurfaceArea LIMIT 10;