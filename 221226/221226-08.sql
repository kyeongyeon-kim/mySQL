-- 테스트
-- CREATE TEMPORARY 임시테이블로 존재 (접속동안만 존재)
CREATE TABLE IF NOT EXISTS book (
	no INT PRIMARY KEY
    , title VARCHAR(25)
    , price INT);

INSERT INTO book VALUES (10, 'test', 10000);
SELECT * FROM book;

DESC book;
DROP TABLE book;