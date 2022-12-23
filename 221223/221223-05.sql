CREATE TABLE IF NOT EXISTS department (
	name VARCHAR(5) PRIMARY KEY NOT NULL
    , departPhone VARCHAR(8) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee (
	id INT PRIMARY KEY AUTO_INCREMENT
    , first_name VARCHAR(10) NOT NULL
    , last_name VARCHAR(10) NOT NULL
    , email VARCHAR(60)
    , departname VARCHAR (5)
    , CONSTRAINT FOREIGN KEY (departname) REFERENCES department (name)
);

INSERT INTO department (name, departPhone)
	VALUES ('IT', '333-4444')
		, ('물류', '333-8282')
        , ('회계', '333-7942')
;
SELECT * FROM department;
INSERT INTO employee (first_name, last_name, email, departname)
	VALUES ('브루스', '웨인', 'batman@com.com', 'IT')
		, ('클락', '켄트', 'super@com.com', 'IT')
        , ('브루스', '리', 'lee@com.com', '물류')
        , ('폴', '피닉스', 'paul@com.com', '회계');
        
SELECT * FROM employee;
SELECT * FROM department;

DESC employee;