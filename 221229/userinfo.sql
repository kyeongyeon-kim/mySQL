CREATE TABLE userinfo_infactive LIKE userinfo;
DESC userinfo_infactive;
SELECT * FROM userinfo_infactive;

-- (회원탈퇴) 트랜잭션을 사용하여 동작들이 한 번에 처리 될 수 있도록 해야한다.
-- 특정한 논리적 흐름으로 동작하는 Stored Procedures
INSERT INTO userinfo_infactive (id, email, firstName, lastName) 
	SELECT id, email, firstName, lastName FROM userinfo WHERE id = 9;
DELETE FROM userinfo WHERE id = 9;

SELECT * FROM userinfo WHERE active = 0;
-- index란 무엇인가
SELECT * FROM userinfo WHERE email = 'asdf@google.com';
-- Full Table scan 모든 테이블을 다 살펴봐야한다는 것
-- 자주 사용되는 컬럼이라면 index화 시켜주면 된다.
SELECT * FROM userinfo WHERE firstName = '이름2';

INSERT INTO userinfo (email, firstName, lastName)
VALUES ('a@email.com', 'a', 'a')
, ('z@email.com', 'z', 'z')
, ('c@email.com', 'c', 'c')
, ('b@email.com', 'b', 'b');
-- DB <-> APP 2tier 어플리케이션, DB <-> SERVER <-> APP 3tier 어플리케이션
SELECT * FROM userinfo;
SELECT * FROM userinfo WHERE firstName = 'b';

DELETE FROM userinfo WHERE id = 14;
SELECT COUNT(*) AS 'COUNT' FROM userinfo WHERE email = 'a';
UPDATE userinfo
SET active = 0
WHERE id = 9;