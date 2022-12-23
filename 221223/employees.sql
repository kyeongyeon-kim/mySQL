-- 집계함수
-- 행갯수 보는 방법 (COUNT) 컬럼에도 접근 가능하다.하지만 NULL값도 카운트 된다.
SELECT COUNT(*), 'asdf' FROM hr.employees;
SELECT * FROM hr.employees;
SELECT COUNT(FIRST_NAME) FROM hr.employees;

-- 전화번호가 515~~로 시작하는 직원
SELECT * FROM employees WHERE PHONE_NUMBER LIKE '515%';
-- 전화번호가 515로 시작하는 직원수?
SELECT COUNT(*) FROM employees WHERE PHONE_NUMBER LIKE '515%';

-- 모든 직원의 연봉의 합
SELECT SUM(SALARY) FROM employees;
-- 모든 직원의 연봉의 평균
SELECT AVG(SALARY) FROM employees;
-- 연봉의 최대값
SELECT MAX(SALARY) FROM employees;
-- 연봉의 최소값
SELECT MIN(SALARY) FROM employees;

-- 연봉의 최대값 - 최소값
SELECT MAX(SALARY) - MIN(SALARY) FROM employees;
 