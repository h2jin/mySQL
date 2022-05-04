-- 
create database shop_db;
use shop_db;

create table shop_db.product(
	id tinyint not null,
    p_name varchar(30) not null,
    created date,
    company varchar(30)
);

-- index 책의 색인과 같다. fullscan을 하면 시간이 오래 걸림. primary key나 index를 지정해주면 데이터를 더욱 빠르게 찾을 수 있다.
-- index : create index(UNIQUE INDEX)
create index idx_product_name
on product (p_name);

-- 가상 테이블 (뷰 테이블) : 
select * from product;

-- 데이터 생성
insert into product values(1, '세탁기', '2020-12-12', '삼성');
insert into product values(2, '냉장고', now(), 'LG');
insert into product values(3, '모니터', curdate(), '삼성');
insert into product values(4, '컴퓨터', curdate(), '삼성');

desc product;

-- 컬럼 추가하기
alter table product add input_time timestamp;

-- 외부인에게 중요한 정보를 노출시키면 안될 때, 계정권한을 막을 수 없는 경우 가상테이블 생성 - 테이블을 새로 생성해서 보여주고 싶은 데이터만 접근 가능하게 하는 것. --> views에 만들어짐
-- 사실 진짜 테이블이 아니라 참조의 개념. 참조하여 필요한 정보를 불러오는 것.
create view product_view 
as select p_name, created, company
from product;

select * from product_view;
select * from product; 

-- 데이터 삭제
delete from product_view where p_name = '컴퓨터'; -- product 테이블에서도 데이터 사라짐. 다른사람이 삭제하는 것을 막으려면 데이터 삭제권한을 주지 않으면 됨.

show databases;

-- index 조회하는 방법
show index from product;

-- index 수정 방법
alter table product ;

-- drop index index 삭제
alter table product
drop index idx_product_name;

-- 테이블 복사
select * from product;

create table product_2 select * from product; 

-- 집계함수
-- 데이터 베이스에서 GROUP BY라는 것이 존재. - 그룹화
use shopdb;

select * from buyttbl;
-- GROUP BY
select *
from buytbl
group by userName;

select *
from buytbl
group by price;

select *
from buytbl
group by amount;

use shopdb;
-- 이름으로 묶고 amount가 3보다 큰 사람들을 출력하라
select *
from buytbl 
where amount > 3
group by userName;

-- 집계 함수 복습
select count(*) as 판매횟수
from buytbl;

select userName, sum(price) as 구매금액
from buytbl;

-- 집계함수와 그룹바이
select userName, sum(price) as 구매금액
from buytbl
group by userName;

select * from buytbl;

-- buytbl에서 이름으로 그룸화하여 그 사람이 총 지불한 금액을 조회하기
select userName, sum(price*amount) as 총지불금액
from buytbl
group by userName;

select * from producttbl;
-- product 테이블에서 이름으로 묶고 제조일이 2020년 12월 12일 이후인 것만 출력 
select *
from producttbl
group by productName;

select * from buytbl;
-- buytbl에서 제품별 판매량 구하기
select prodName as 제품명, amount
from buytbl
group by prodName;

-- usertbl에서 2000년생 이후 출생자 이름과 출생년도만 출력해서 usertbl_view3으로 정의






