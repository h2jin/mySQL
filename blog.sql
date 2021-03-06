-- 언어 설정 확인 명령어 
show variables like 'character_set%';
show variables like 'c%';

-- 자바 프로그램 (스프링 DB 접속하는 전용 유저를 생성)

-- 비밀번호 정책이 낮으면 접근 불가
create user 'ten'@'%' identified by '1q2w3e4r5t!';
grant all privileges on *.* to'ten'@'%';
flush privileges;

create user 'ten'@'localhost' identified by '1q2w3e4r5t!';
grant all privileges on *.* to'ten'@'localhost';
flush privileges;

use mysql;
select user, host from user;

-- 데이터 베이스 생성
create database blog;
-- 
use blog;


insert 
    into
        User
        (createDate, email, password, username) 
    values
        (?, ?, ?, ?);
        
select * from user;

drop table reply;

-- 연습용
use blog_1;
select * from user;




