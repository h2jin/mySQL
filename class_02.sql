--  C(생성) R(읽음) U(수정) D (삭제)
-- 데이터 생성 insert 구문
desc membertbl;

 insert into memberTbl values("Dang", "탕탕이", "경기도 부천시");
 insert into memberTbl values('Han', '한주연', '부산시 해운대구');
 insert into memberTbl(memberAddress, memberName, memberId) values('서울시 상암동', '지운이', 'jee');

-- 오류 구문 (memberTbl에 memberId, memberName 필드명이 not null로 설계했기 때문)
 insert into memberTbl(memberId) values('jee2222'); -- 기본데이타가 없다.. memeberTbl을 설계할 때 멤버네임을 not null로 해놨는데 비어있는 형태로 넣어서 오류가 난 것임.
 insert into memberTbl(memberId, memberName) values('jee2222', '홍길성');

-- 전체 테이블에 대한 데이터 조회
select * from memberTbl;

-- 한건에 대한 데이터의 조회 - where절 사용
select * from memberTbl where memberId = 'jee';

-- 한 건에 대한 조회 + 조건절 --> 내가 원하는 값만 불러올 수 있음
select memberName
from memberTbl
where memberId = 'jee';

-- 한 건에 대한 데이터 삭제
delete from memberTbl where memberId = 'jee2222';

-- 전체에 대한 데이터 삭제 구문
delete from memberTbl;
-- truncate membertbl; delete가 안되면 이를 사용해도 지워진다.
-- 데이터베이스를 다룰 때는 조심해야 한다.


-- 한 건에 대한 데이터 수정
update membertbl set memberName = '홍길동' where memberid = 'jee';  -- 조건식 걸어줘야함!!! 잘못하면 모든 memberName이 홍길동으로 바뀔 수 있다.

-- 전체 데이터에 대한 값 수정
update membertbl set memberAddress = ''; -- 모든 address가 ''로 수정됨. 

-- ----------------------------------------------------------
desc producttbl;

-- 문제 1 producttbl에 데이터를 3건 입력해주세요
-- 오류가 난 이유 : make date--> date타입의 형식과 맞아야 함
insert into producttbl values(1, '세탁기', 10, '20220502', 'LG', 10);
delete from producttbl;

-- 불필요한 컬럼을 삭제하는 방법
alter table producttbl drop makeDate;

-- 3건의 데이터 입력하기
insert into producttbl values(1, '세탁기', 10, 'LG', 10);
insert into producttbl values(2, '컴퓨터', 90, '삼성', 2);
insert into producttbl values(3, '냉장고', 80, 'LG', 100);
-- 문제 2 검색 
select * from producttbl;

select * from producttbl where productId = 3;

select company
from producttbl
where productId = 2;

select cost
from producttbl
where productId = 2;

-- 문제 3 수정
update producttbl set cost = 100 where productId = 2;

-- 문제 4 삭제

delete from producttbl where productId = 3;
