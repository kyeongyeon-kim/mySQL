-- 계좌 이체
-- 1번 계좌에서 -5000 -> 2번 계좌에 +5000
-- 트랜잭션
START TRANSACTION;
BEGIN;
	UPDATE account
	SET money = money - 5000
	WHERE id = 1;

	UPDATE account
	SET money = money + 5000
	WHERE id = 2;
COMMIT;
-- COMMIT -- ROLLBACK
SELECT * FROM account;