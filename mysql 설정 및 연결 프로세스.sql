
-- 연결된 프로세스 확인하기

SHOW PROCESSLIST;
SHOW FULL PROCESSLIST;

-- Command sleep이 아니라 lock이라고 보일때 죽이는 방법
-- kill 'id';
-- id : 프로세스 아이디
-- User : 스레드가 접속하고 있는 Mysql 사용자 명
-- host : 사용자 컴퓨터 주소, IP Address
-- command : 스레드의 현재 상태 
-- Command : Daemon 스레드 프로그램이 계속 돌아가기 위한 스레드
-- Time : 프로세스가 현재 커맨드된 상태에서 동작 시간
-- State : 사람이 읽을 수 있는 스레드 상태 정보
-- info : 현재 실행되는 SQL (show PROCESSLIST)