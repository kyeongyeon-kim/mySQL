-- 추가, 조회, 수정, 삭제
-- Create Read Update Delete (CRUD)
-- SQL문법을 DML이라 부른다. (Data Manipulation Language)

-- 데이터베이스 구성, 테이블 구성
-- DDL Date DEfinition Language

-- 부서별 몇명의 직원이 있는지
SELECT * FROM employees;
/*
비효율적 셀렉문을 반복 생성해야함
SELECT DEPARTMENT_ID, count(*) FROM employees WHERE DEPARTMENT_ID = 90
UNION
SELECT DEPARTMENT_ID, count(*) FROM employees WHERE DEPARTMENT_ID = 60
UNION
SELECT DEPARTMENT_ID, count(*) FROM employees WHERE DEPARTMENT_ID = 70;
*/
-- GROUP
SELECT DEPARTMENT_ID, count(*)
FROM employees
GROUP BY DEPARTMENT_ID;

-- JOB_ID로 분류(그룹)지어 개수 세기
SELECT JOB_ID, COUNT(*)
FROM employees
GROUP BY JOB_ID;
-- 직책별 평균 연봉, 최대연봉, 최소연봉 구하기
SELECT JOB_ID, (SELECT AVG(SALARY)), (SELECT MAX(SALARY)), (SELECT MIN(SALARY)) 
FROM employees 
WHERE JOB_ID = 'IT_PROG'
GROUP BY JOB_ID;

-- LAST_NAME별로 그룹지어 개수 세기
SELECT LAST_NAME, COUNT(*) FROM employees GROUP BY LAST_NAME;
-- LAST_NAME별로 그룹지어 2명 이상인 LAST_NAME 조회 (WHERE절은 프롬절 > 그룹 바이> 웨얼절이라 에러)(HAVING절은 마지막에 실행된다) 
SELECT LAST_NAME, COUNT(*) FROM employees 
	GROUP BY LAST_NAME
	HAVING COUNT(*) > 1;


