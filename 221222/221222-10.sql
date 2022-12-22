-- hr 데이터베이스를 사용하기 위한 명령어 작성 후 실행

-- 데이터베이스 테이블 목록 보기
USE hr;

SHOW TABLES;
-- employees 테이블 구조 조회
DESC employees;
-- employees 테이블의 모든 행의 모든 열 조회하기~
SELECT * FROM employees;
-- 직원 테이블의 First_Name이 'James'인 행 조회
SELECT * FROM employees WHERE FIRST_NAME = 'James';
-- 직원 테이블의 LAST_NAME에 'Jo'로 시작하는 행 조회
SELECT * FROM employees WHERE LAST_NAME LIKE 'Jo%';
-- 직원 테이블의 FIRST_NAME이 6자이고 LAST_NAME도 6자인 행 조회
SELECT * FROM employees WHERE FIRST_NAME LIKE '______' AND LAST_NAME LIKE '______';
SELECT * FROM employees WHERE char_length(FIRST_NAME) = 6 AND char_length(LAST_NAME) = 6;
-- 직원 테이블의 FIRST_NAME과 LAST_NAME을 결합하여 하나의 컬럼 (FULL_NAME)이라는 별명으로 조회하기 (문자열 결합 'concat')
SELECT FIRST_NAME, LAST_NAME, concat(FIRST_NAME,' ', LAST_NAME) AS 'FULL_NAME' FROM employees;
-- 직원 테이블의 Hire_Date가 1987년 07월인 행 조회
SELECT * FROM employees WHERE HIRE_DATE LIKE '1987-07-%';
SELECT * FROM employees WHERE HIRE_DATE BETWEEN '1987-07-01' AND '1987-07-31';
-- 직원 테이블의 Salary열의 값이 10000이상 15000이하인 행 조회
SELECT * FROM employees WHERE SALARY  BETWEEN 10000 AND 15000;
-- 직원 테이블의 Salary 상위 10명 조회
SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10;
-- 직원 테이블의 연봉 11등 ~ 20등 조회
SELECT * FROM employees ORDER BY SALARY DESC LIMIT 10 OFFSET 10;
-- 직원 테이블 Fist_Name, Salary, (Sarary의 6%를 연산) 'tax' 별명 모든 행 조회
SELECT FIRST_NAME, SALARY, ROUND(SALARY * (6 / 100)) AS 'tax' FROM employees;