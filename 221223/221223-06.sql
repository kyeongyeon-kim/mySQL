SHOW DATABASES;

USE hr;
SHOW TABLES;

SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM hr.employees;


-- 직원 테이블 FINANCE
-- 서브쿼리문
-- SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME = 'FINANCE'; = 100 이니까

SELECT * FROM employees WHERE DEPARTMENT_ID = 
	(SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME = 'FINANCE');
    
SELECT '임의의 행정보', (SELECT 500);
SELECT * FROM departments;
-- 부서명이 IT로 시작하는 부서를 조회
SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%';
-- 위 부서에서 일하는 직원들 조회
SELECT * FROM departments WHERE DEPARTMENT_ID IN 
	(SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%');
    
-- John seo가 받는 연봉과 같은 직원들 조회하기
SELECT * FROM employees;
SELECT * FROM employees WHERE SALARY = 
(SELECT SALARY FROM employees WHERE FIRST_NAME = 'John' AND LAST_NAME = 'Seo');

-- JT Olson과 같은 부서에서 일하는 직원 조회하기
SELECT * FROM employees
WHERE DEPARTMENT_ID 
= (SELECT DEPARTMENT_ID FROM employees WHERE FIRST_NAME = 'TJ' AND LAST_NAME = 'Olson');

-- 연봉 상위 10명 (서브쿼리문활용 / 하나의 테이블로 지정하여 사용)
-- SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10; 하나의 테이블과 같다.
SELECT * FROM (SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10) AS A
ORDER BY A.SALARY ASC;