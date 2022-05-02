-- userTBL, buyTBL 만들기

use shopdb;

-- 고객테이블 생성
create table userTBL(
	userName char(3) not null,
    birthYear int not null,
    addr char(2) not null,
    mobile char(13),
    primary key(userName)
);

-- 필드 수정, 컬럼 수정
alter table userTbl modify mobile char(13);
desc usertbl;

-- 구매 테이블 생성 (fk)

create table buyTBL(
	userName char(3) not null,
    prodName char(3) not null,
    price int not null,
    amount int not null,
    foreign key(userName) references usertbl(userName)
);

desc buyTBl;

-- userTbl 에는 foreign key 없음

-- userTbl에 데이터 입력하기
insert into userTbl values('이승기', 1987, '서울', '010-1234-1234');
insert into userTbl values('홍길동', 1911, '부산', '010-2222-2222');
insert into userTbl values('이순신', 1999, '대구', '010-3333-3333');

select * from userTbl;
select * from buyTbl; 

-- 구매 테이블 데이터 입력
-- insert into buyTbl values('이승기', '운동화', 50, 1); -- 유저테이블에 있는 유저네임이 아니라서 오류가 난다.

insert into buyTbl values('이승기', '운동화', 50, 1);
insert into buyTbl values('이승기', '노트북', 150, 1);
insert into buyTbl values('홍길동', '책', 10, 5);
insert into buyTbl values('홍길동', '모니터', 200, 2);
insert into buyTbl values('이순신', '청바지', 40, 1);
insert into buyTbl values('이순신', '책', 10, 3);

--
select * from buyTbl;