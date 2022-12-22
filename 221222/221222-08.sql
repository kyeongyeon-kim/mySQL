-- 패턴 매칭 (비슷한 것을 찾아주는)
SELECT * FROM country WHERE Name LIKE '%Korea%';

-- 국가명이 'K'로 시작하는 국가
SELECT Name FROM country WHERE Name LIKE 'K%';
-- 국가명이 'K'로 끝나는 국가
SELECT Name FROM country WHERE Name LIKE '%K';
-- 국가명이 'K'가 포함되어 있는 국가
SELECT Name FROM country WHERE Name LIKE '%K%';

-- 국가명이 'A'로 시작하고 'A'로 끝나는 국가
SELECT Name FROM country WHERE Name LIKE 'A%A';
-- 국가명이 5글자인 국가
SELECT Name FROM country WHERE Name LIKE '_____';
-- 국가명이 'A'로 시작하고 'A'로 끝나는 국가 (6글자)
SELECT Name FROM country WHERE Name LIKE 'A%A' AND Name LIKE '______';
SELECT Name FROM country WHERE Name LIKE 'A____A';