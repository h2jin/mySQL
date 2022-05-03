
use shopdb;

select * from usertbl;
select * from buytbl;

-- inner Join
select *
from usertbl
inner join buytbl
on usertbl.userName = buytbl.userName;

-- inner join 2
select a.userName, a.addr, a.mobile, b.prodName, b.price, b.amount
from usertbl as a -- 별칭이라는 뜻 --> a = usertbl
inner join buytbl as b 
on  a.userName = b.userName;

-- inner join 연습 3

-- inner join 연습 4

-- LEFT JOIN 1
select * 
from usertbl as u -- 보통 별칭 앞글자를 땀
left join buytbl as b
on u.userName = b.userName; 
-- > 구매티이블에는 야쓰오의 정보가 없음. null 값 나옴. innerJoin에는 야쓰오 전혀 나오지 않음. 그래서 교집합
-- 상황에 따라서 맞춰서 쓰는 것.

-- usertbl에 고객 등록
select * from usertbl;
insert into usertbl values('야쓰오', 2000, '여수', '010-1234-1234');

-- LEFT JOIN 2
select *
from usertbl as u
left join buytbl as b
on u.userName = b.userName
where b.userName is not null; 

select *
from usertbl as u
left join buytbl as b
on u.userName = b.userName
where b.userName is null;

-- 구매 테이블 생성할 때 외래키에대한 제약을 생성했기 때문이다.
insert into buytbl values('티모','컴퓨터', 100 ,1 ); -- usertbl에 티모라는 고객이 없음 

-- 하지만 구매테이블을 생성할 때 외래키(fk)를 제약하지 않았다면 insert는 가능하다.

-- left join 3
select * 
from buytbl as b
left join usertbl as u
on u.userName = b.userName; 
-- usertbl에 추가해줬던 야쓰오 나오지 않음. buytbl이 기준이기 때문.

-- left join 4
select * 
from buytbl as b
left join usertbl as u
on u.userName = b.userName
where u.userName is not null;

-- right join 1
select u.userName, b.prodName, b.price, b.amount
from usertbl as u
right join buytbl as b
on u.userName = b.userName;
-- buytbl을 기준으로 usertbl의 정보를 가지고 오는 것.

-- 곱집합 CROSS JOIN 1
select *
from usertbl as u
cross join buytbl as b
on u.userName = b.userName;

-- 곱집합 CROSS JOIN 2
select *
from usertbl
cross join buytbl
on usertbl.userName = buytbl.userName
where usertbl.userName is null
or buytbl.userName is null


