-- 주석
-- ctrl + shift + enter
use shopdb; -- 예약어

-- 데이터 베이스를 생성하는 구문
create database shopdb_1;

-- 데이터 베이스를 삭제하는 구문
-- drop database shopdb_1; -- 조심해서 사용해야 함.

-- 테이블을 생성하는 구문
-- create table 테이블명(
-- 	필드명 필드타입, 
--     필드명 필드타입, 
--     primary key(필드명 위에서 작성한 필드명 중 하나여야함)
-- );
-- 테이블 삭제 방법
-- drop table membertbl_1;

-- memberTBL 테이블 생성
create table memberTBL(
	memberId char(8) not null, -- 멤버아이디의 데이터타입 8글자까지 값을 넣을 수 있다고 정해줌
    memberName char(5) not null,
    memberAddress char(20),
    primary key(memberId) -- 회원가입할 때 아이디 중복 안됨. 유일을 보장해줘야 함. 
);

-- select 구문
select * from memberTBL;

-- 테이블 구조 확인 방법
desc memberTBL; 


-- 테이블 만들기 2
create table productTBL(
	productId int not null,
    productName char(4) not null,
    cost int not null,
    makeDate date,
    company char(5),
    amount int,
    primary key(productId)
);

select * from productTBL;
desc productTBL;





