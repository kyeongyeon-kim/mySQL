-- CHAR (고정길이) <= 255
-- VARCHAR (가변길이) <= 255
-- 장문의 문자열 사용시 TEXT타입 활용

-- TRIM 공백 제거 함수 (방향 지정 가능)
SELECT TRIM('      234         ');
SELECT LTRIM('      234         ');
SELECT RTRIM('      234         ');

SELECT LOWER('ABCD');
SELECT UPPER('abcd');

SELECT REVERSE('뒤집기');

SELECT CONCAT('문자열', '여러개', '결합');
SELECT CONCAT('값 중에', NULL, '값이 있으면?');

SELECT CHAR_LENGTH('몇글자인가요?');

SELECT REPLACE('원본 문자열에서 변환합니다', '변환', 'REPLACE');
-- 남는 문자열을 채워주는 함수
SELECT LPAD('123', 5, '0');
SELECT RPAD('456', 5, '*');

SELECT LOCATE('D', 'ABCDEFG');
SELECT LOCATE('A', 'ABABAB', 2);

SELECT SUBSTRING('employees', 3);
SELECT SUBSTRING('employees', 3, 3);
SELECT SUBSTRING('employees', -3);