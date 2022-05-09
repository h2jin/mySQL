-- 서브쿼리 -1

-- db 생성
create database reservationdb;
use reservationdb;

-- table 생성 (예약정보)
create table reservation(
	id int auto_increment,
    name varchar(20) not null,
    reserveDate date not null,
    roomNum varchar(5) not null,
    primary key(id)
);

-- 고객 테이블
create table customer(
	id int auto_increment,
    name varchar(20) not null,
    age int not null,
    address varchar(10),
    primary key(id)
);

-- 데이터 입력
insert into reservation values(1, '홍길동', '2020-05-01 00:00:00', 1);
insert into reservation values(2, '임꺽정', '2020-05-02 00:00:00', 2);
insert into reservation values(3, '장길산', '2020-05-03 00:00:00', 3);
insert into reservation values(4, '홍길동', '2020-05-04 00:00:00', 4);

select * from reservation;

-- 데이터 수정
-- 1 = roomNum 1001
update reservation set roomNum = '1001' where id = 1;
update reservation set roomNum = '1002' where id = 2;
update reservation set roomNum = '1003' where id = 3;
update reservation set roomNum = '1004' where id = 4;

-- 고객 테이블 데이터 
insert into customer values (1, '홍길동', 20, '서울');
insert into customer values (2, '임꺽정', 30, '서울');
insert into customer values (3, '장길산', 24, '서울');
insert into customer values (4, '전우치', 33, '서울');

-- 수정 2 -> 인천 3 -> 서울 4 -> 수원
update customer set address = '인천' where id = 2;
update customer set address = '서울' where id = 3;
update customer set address = '수원' where id = 4;

select * from customer where address in ('서울');

-- 서브쿼리 (where절에서 사용하는 중첩 서브쿼리)
-- 주소가 서울인 고객을의 예약 정보를 확인하는 쿼리
select id, reserveDate, roomNUm, name 
from reservation
where name in(
				select name 
                from customer 
                where address = '서울'
                );

select * from reservation;
select * from customer;

-- JOIN문으로 변경해서 같은 결과를 출력해주세요 --> left join으로 (inner join 보다 left join을 사용하는 것이 더 낫다)
select r.id, r.reserveDate, r.roomNum, r.name
from reservation as r
left join customer as c
on r.name = c.name
where c.address = '서울';

-- FROM절에 사용하는 서브쿼리
-- 서브쿼리 먼저 실행됨. // roomNum이 1001보다 큰 데이터를 먼저 찾은 후, 이름과 roomNum을 뽑음.
select name, reservedRoom
from (select name, reserveDate, (roomNum) as reservedRoom
		from reservation
        where roomNum > 1001) as reservationInfo;
        
/*
쿼리 실행순서        
reservation 테이블에서 roomNum > 1001 보다 큰 레코드를 먼저 찾은 후에 roomNum 필드값 1씩 증가
--> 해당 쿼리의 결과 집합 reservationInfo 임시 테이블로 만들어진다.   
--> 외부 쿼리에서는 이렇게 만들어진 임시 테이블에서 name필드와 reservedRoom 필드만을 선택해서 결과집합을 보여주게 된다.
*/      
 
 -- 서브쿼리를 사용하여 문제 하나씩 만들어서 제출
-- 나이가 30보다 어린 사람의 예약 정보를 확인하는 쿼리
 select *
 from reservation
 where name in (select name from customer where age < 30);
 
-- 5/2 이후에 예약한 예약자 정보 확인
select *
from (select * from reservation where reserveDate > '2020-05-02 00:00:00') as reservationInfo;

-- 2020-05-02 일자로 예약한 고객의 id와 이름 조회하기
select id, name
from customer
where name in(select name from reservation where reserveDate = '2020-05-02');

-- 고객테이블에서 실제 예약한 고객중 30살 이상인 고객 id, 이름, 나이, 주소, 예약일, 예약한 방 정보 출력
select c.id, c.name, c.age, c.address, r.reserveDate, r.roomNum
from customer as c
left join reservation as r
on c.name = r.name
where c.age >= 30;
-- inner join과 left join 비교해보기

-- 지역이 인천과 서울인 예약고객 뽑아내기
select * 
from reservation
where name in(select name from customer where address = '서울' or '인천');
