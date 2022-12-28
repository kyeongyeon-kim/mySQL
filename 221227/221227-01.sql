SELECT * FROM restaurant;
DESC restaurant;

SELECT count(*) AS 'CNT' FROM restaurant;

CREATE TABLE IF NOT EXISTS account (
	id INT PRIMARY KEY AUTO_INCREMENT
    , owner VARCHAR(15) NOT NULL
    , money INT NOT NULL
);

INSERT INTO account (owner, money) VALUES ('내계좌', 10000);
INSERT INTO account (owner, money) VALUES ('you계좌', 15000);

SELECT * FROM account;

