-- UTF - 8 언어 확인
SHOW VARIABLES LIKE 'character_set%';
SHOW VARIABLES LIKE 'c%';

-- java : utf-8 -> 1~3 동적으로 처리
-- mysql : utf-8 : 3byte
-- mysql : utf-8mb4 확장 : 4byte 

-- 데이터 베이스 생성하기
CREATE DATABASE green_blog;

-- 사용자 생성 및 권한 처리
CREATE USER 'ten'@'%' IDENTIFIED BY '1q2w3e4r5t!';
GRANT ALL PRIVILEGES ON *.* TO 'ten'@'%';

CREATE USER 'ten'@'localhost' IDENTIFIED BY '1q2w3e4r5t!';
GRANT ALL PRIVILEGES ON *.* TO 'ten'@'localhost';

FLUSH PRIVILEGES;

-- 사용자 확인
USE mysql;
SELECT user, host from user;
