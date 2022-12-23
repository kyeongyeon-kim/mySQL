-- 책 테이블을 생성합니다.
-- 컬럼 구성
-- 숫자 : 정수 (각 행을 고유하게 식별할 수 있는 특별한 컬럼 값)
-- 제목 : 가변길이 문자열 (25자 제한)
-- 가격 : 정수
CREATE TABLE IF NOT EXISTS book (
	no INT PRIMARY KEY
	, title VARCHAR(25)
    , price INT
);
DESC book;
-- 책 테이블에 3행을 추가합니다.
-- 파워자바 25000원
-- 구의 증명 6480원
-- 모든 것은 기본에서 시작한다 11200원
INSERT INTO book (no, title, price) VALUES (1, "파워자바", 25000);
INSERT INTO book (no, title, price) VALUES (2, "구의 증명", 6480);
INSERT INTO book (no, title, price) VALUES (3, "모든 것은 기본에서 시작한다", 11200);

SELECT * FROM book;

INSERT INTO book (no, title, price) VALUES (5, "파워자바", 25000);

SELECT * FROM book;

DELETE FROM book WHERE no = 4;