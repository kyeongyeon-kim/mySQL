-- 서면 식당(restaurant)
-- INT PK AUTO_INCREMNET
-- 상호명(name : VARCHAR(15))
-- 전화번호(phoneNumber : VARCHAR(15))
-- 주소 (address : VARCHAR(100))
USE my_db;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS restaurant (
	no INT PRIMARY KEY AUTO_INCREMENT
    , name VARCHAR(15)
    , phoneNumber VARCHAR(15)
    , address VARCHAR(100)
);

SELECT * FROM restaurant;
DESC restaurant;

INSERT INTO restaurant (name, phoneNumber, address)
	VALUES ('영자면옥', '234-2344', '부전동 444-2222')
		, ('칸다소바', '123-6766', '부전동 234-523')
        , ('서브웨이', '277-9847', '부전동 538-2830');
        
INSERT INTO restaurant (name, phoneNumber, address) VALUES (null, null, null);

-- 테이블 컬럼 수정
-- 제약사항(NULL 허용 X) 추가
ALTER TABLE restaurant CHANGE COLUMN name name VARCHAR(15) NOT NULL;
DESC restaurant;

-- 컬럼 추가 방법 및 삭제 방법
ALTER TABLE restaurant ADD COLUMN score DOUBLE;
ALTER TABLE restaurant DROP COLUMN score;


-- 영자면옥 칼국수
-- 영자면옥 제육 
-- 영자면옥 짜장면
-- 칸다소바 마제소바, 파마제소바
-- 서브웨이 에그마요, 미트볼, 참치, 새우

ALTER TABLE restaurant ADD COLUMN menu VARCHAR(30);
SELECT * FROM restaurant;

INSERT INTO restaurant (name, phoneNumber, address, score, menu)
	VALUES ('영자면옥', '234-2344', '부전동 444-2222', '5.0', '칼국수')
		, ('영자면옥', '234-2344', '부전동 444-2222', '5.0', '짜장면')
		, ('영자면옥', '234-2344', '부전동 444-2222', '5.0', '제육');

ALTER TABLE restaurant DROP COLUMN menu;

CREATE TABLE IF NOT EXISTS menu (
	menuID INT PRIMARY KEY AUTO_INCREMENT
	, name VARCHAR(30) NOT NULL
    , price INT NOT NULL
);

INSERT INTO menu (name, price) VALUES ('칼국수', 5000), ('제육', 6000), ('짜장면', 5500);

SELECT * FROM menu;
-- 외래키(Foreign Key) 데이터 중복 X - > 결함이 생기지 않음
ALTER TABLE menu ADD CONSTRAINT FOREIGN KEY (restId) REFERENCES restaurant (no);
DESC menu;

-- 참조 무결성으로 인한 삭제 불가능 (참조되어 있기에 삭제 불가)
DELETE FROM restaurant WHERE id = 1;