SELECT * FROM employees;

-- 90번 부서의 연봉 오름차순 조회
SELECT * FROM employees WHERE DEPARTMENT_ID = 90 ORDER BY SALARY ASC;
-- 60번 부서의 연봉 오름차순 조회
SELECT * FROM employees WHERE DEPARTMENT_ID = 60 ORDER BY SALARY ASC;
-- 위의 두 결과를 한 테이블로 표현 (오름차순 조회)
SELECT * FROM employees WHERE DEPARTMENT_ID IN (90, 60) ORDER BY SALARY ASC;
-- 정렬기준 정해주기 (첫번째 기준이 같을 경우, 두번째 기준을 기준으로 정렬한다.)
SELECT * FROM employees WHERE DEPARTMENT_ID IN (90, 60) 
	ORDER BY DEPARTMENT_ID DESC, SALARY ASC;
