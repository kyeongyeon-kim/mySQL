SHOW DATABASES;

USE my_db;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS class (
	id INT PRIMARY KEY AUTO_INCREMENT
    , class VARCHAR(10)
);
CREATE TABLE IF NOT EXISTS student (
	id INT PRIMARY KEY AUTO_INCREMENT
    , name VARCHAR(10)
    , kor INT
    , eng INT
    , math INT
    , classId INT
);

INSERT INTO class (class) VALUES ('돌고래'), ('코끼리');
SELECT * FROM class;
SELECT * FROM student;
INSERT INTO student (name, kor, eng, math, classId)
	values ('돌피', 90, 66, 80, 1), ('블루홀', 88, 70, 100, 1)
            , ('네드', 80, 80, 80, 2), ('가네샤', 90, 75, 77, 2);
