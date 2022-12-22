CREATE DATABASE my_db;

SHOW DATABASES;

USE my_db;

SHOW TABLES;

-- 이름
-- 나이
-- 고정길이 문자열, 가변길이 문자열(VARCHAR(가변길이 제한 10))
CREATE TABLE person (
	name VARCHAR(10),
    age INT -- 나이 (정수형 int)
);
SELECT * FROM person;
DESC person;

-- 행 정보 저장
INSERT INTO person (name, age) VALUES ('홍길동', 22);
INSERT INTO person (name, age) VALUES ('브루스 리', 33);
INSERT INTO person (age, name) VALUES (44, '스티븐 킹');

INSERT INTO person VALUES ('톰 크루즈', 55);
INSERT INTO person (name) VALUES ('이름만');
INSERT INTO person (age) VALUES (66);

-- 책 테이블을 생성합니다.
-- 컬럼구성
-- 제목 : 가변길이 문자열(25자 제한)
-- 가격 : 정수
CREATE TABLE BOOKS (
	title VARCHAR(25),
	price int);
-- 책 테이블에 3행을 추가합니다.
-- 파워자바 25000원
-- 구의 증명 6480원
-- 모든 것은 기본에서 시작한다 11200원
INSERT INTO BOOKS VALUES ('파워자바', 25000);
INSERT INTO BOOKS VALUES ('구의 증명', 6480);
INSERT INTO BOOKS VALUES ('모든 것은 기본에서 시작한다', 11200);

SELECT * FROM BOOKS;
