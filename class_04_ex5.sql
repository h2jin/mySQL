use shopdb_1;
-- AND 와 OR

select * from membertbl;

insert into membertbl values('jsa','김주한','부산시 진구');

-- 이름 홍길동, 주소가 부산시 진구
select *
from membertbl
where memberName = '홍길동'
and memberAddress = '부산시 진구';

-- 주소가 부산시 진구 or 경기도 부천시
select * 
from membertbl
where memberAddress = '부산시 진구'
or memberAddress = '경기도 부천시';

-- 주소가 (부산시 진구 or 경기도 부천시) and 그중에 이름이 김주한
select *
from membertbl
where (memberAddress = '부산시 진구' or memberAddress = '경기도 부천시') and memberName = '김주한';

use shopdb;
-- 샘플 테이블 생성
create table memberCart(
	id int not null auto_increment,
    name varchar(30) not null,
    amount int not null,
    primary key(id)
);

desc memberCart;
select * from membercart;

-- 테이블에 칼럼 추가
alter table memberCart add productName varchar(30) not null;

-- 테이블에 컬럼명을 수정해보자
alter table memberCart rename column name to name2;

-- 테이블에 컬럼명을 삭제해보자
alter table membercart drop column name2;

-- 테이블 이름 변경하기
alter table mycart rename shopCart; -- 1
rename table membercart to myCart; -- 2
-- 두가지 방법 있음

-- 데이터 입력
insert into shopcart values(1, 1, '청바지');

-- primary key를 입력하지 않았는데 왜 오류가 나지 않았나?
-- 기본 전략 suto_increment() 설정해놔서 오류나지 않음. 
insert into shopcart(amount, productName) values(2, '운동화');

insert into shopcart(amount, productName) values(12, '잠바');
insert into shopcart(amount, productName) values(3, '핸드폰');
insert into shopcart(amount, productName) values(5, '지갑');
desc shopcart;

select * from shopcart;

-- BETWEEN
select * 
from shopcart
where amount between 2 and 5;






