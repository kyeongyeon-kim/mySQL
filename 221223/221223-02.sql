-- DELETE FROM person;
DROP TABLE IF EXISTS person;

CREATE TABLE IF NOT EXISTS person (
	id INT PRIMARY KEY AUTO_INCREMENT
	, name VARCHAR(10) -- 이름 (가변길이 제한 10)
    , age INT -- 나이 (정수형 int)
);

SELECT * FROM person;
DESC person;

INSERT INTO person (id, name, age) VALUES (100, "홍길동", 22);
INSERT INTO person (name, age) VALUES ("다른사람", 23);

DELETE FROM person WHERE id = 102;

UPDATE person
SET name = '도우너'
WHERE id = 103;

SELECT * FROM person;

UPDATE person
SET age = 44
WHERE id = 103;

-- 104번의 사람의 이름을 '둘리' 나이를 50으로 수정하기
UPDATE person
SET name = '둘리', age = 50
WHERE id = 104;


