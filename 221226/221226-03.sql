-- UNION으로 세로방향으로 결과를 합칠 수 있다.
-- 70번 부서
(SELECT * FROM employees WHERE DEPARTMENT_ID = 70 ORDER BY SALARY ASC)
	UNION
-- 90번 부서
(SELECT * FROM employees WHERE DEPARTMENT_ID = 90 ORDER BY SALARY ASC)
	UNION
-- 60번 부서
(SELECT * FROM employees WHERE DEPARTMENT_ID = 60 ORDER BY SALARY ASC);

-- UNION은 DISTINCT처럼 각 행에 중복되는 행이 있다면 제거해준다. (중복없이 추가하고 싶다면 UNION ALL 활용)
(SELECT 'A', 'B', 'C')
	UNION ALL
(SELECT 'D', 'E', 'F')
	UNION ALL
(SELECT 'G', 'H', 'I')
	UNION ALL
(SELECT 'A', 'B', 'C');

-- UNION 사용 시 주의 (컬럼 개수와 타입이 다른 경우 결합 불가)
SELECT '첫번째행', '은문자열', '3개'
	UNION
SELECT 123, 444.000, 2222, 203030;

