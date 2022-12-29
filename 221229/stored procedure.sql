-- SP(stored Procedure) 동작 방법
-- function과 비슷하지만 좀 더 넓은 범위의 동작이 가능 (sp에서 sp호출, sp에서 function호출, 모든 sql문법 사용 가능)
CALL userout(5);
SELECT * FROM userinfo;
SELECT * FROM userinfo_infactive;
-- SP는 반복적인 동작을 빠르게 할 수 있도록 설계 되었음

-- 회원등록 후 등록된 회원의 id 확인하기
INSERT INTO userinfo (email, firstName, lastName)
VALUES ('new14@email.com', 'new', 'new');

-- 자동생성 된 마지막 id
SELECT LAST_INSERT_ID() AS 'LASTINSERT';

SELECT * FROM userinfo;


-- @변수이름 = 세션변수
CALL usp_userin('usp@email.com', 'usp', 'usp', @var);
SET @sessionvar := 44;

SELECT @sessionvar;
SELECT @var;
SELECT * FROM userinfo;