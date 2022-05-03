
--  문제 1 shopdb_1 데이터 베이스를 생성
create database shopdb_1;

-- 문제 2 membertbl 테이블 생성

-- 문제 3 productTbl 테이블 생성

-- 문제 4. (간단한 테이블 생성 필드 2개 이상)
create table userTbl(
	userName char(4) not null,
    userId char(8) not null
);

drop table usertbl;

-- 문제 5 (간단한 테이블 생성 필드 개 이상 primary key 지정)
create table userTbl_1(
	userId char(8) not null,
    userName char(4) not null,
    userAddress char (20),
    userPhoneNum int not null,
    primary key(userId)
);

drop table usertbl_1;


