DESC userinfo;

SELECT * FROM userinfo;

-- 계산된 값을 컬럼으로 추가하지 마세요! 필요하다면 view or generated column을 사용.
INSERT INTO userinfo (email, firstname, lastname)
VALUES ('another@google.com', '이름2', '성2');

INSERT INTO userinfo (email, firstname, lastname)
VALUES ('asdf@google.com', '이름2', '성2');

-- active = 유저가 활성화 상태인지 아닌지
INSERT INTO userinfo (email, firstname, lastname, fullname, visitcount, active)
VALUES ('asdf@google.com', '이름1', '성1', '이름1성1', 0, 1);


INSERT INTO userinfo (email, firstname, lastname, fullname)
VALUES ('another@google.com', '이름2', '성2', '이름2성2');

-- 행 추가 시 DEFAULT 값 설정 = 기본 값
INSERT INTO userinfo (email, firstname, lastname, fullname)
VALUES ('another@google.com', '이름2', '성2', '이름2성2');

-- email 중복 : UNIQUE 제약사항으로 해결 /중복가입 제한 (UQ = Unique)
INSERT INTO userinfo (email, firstname, lastname, fullname, visitcount, active)
VALUES ('asdf@google.com', '이름2', '성2', '이름2성2', 0, 1);

-- NOT NULL 제약사항으로 해결 (table > NN 체크)
INSERT INTO userinfo (email, firstname, lastname, fullname, visitcount, active)
VALUES (null, null, null, null, null, null);