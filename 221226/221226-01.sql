-- 중복 제거하고 보고싶다. DISTINCT
SELECT DISTINCT LAST_NAME FROM employees;

--
SELECT JOB_ID FROM employees;
SELECT DISTINCT JOB_ID FROM employees;

-- 위의 중복을 제거한 조회결과를 직책명으로 오름차순으로 조회하기.
SELECT DISTINCT JOB_ID FROM employees ORDER BY JOB_ID;
-- 직책 개수
SELECT COUNT(DISTINCT JOB_ID) FROM employees ORDER BY JOB_ID;
