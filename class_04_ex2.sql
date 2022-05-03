-- usertbl기준으로 buytbl left join한다.
-- mobile에서 -빼고 조회
select u.userName, (u.mobile, '-', '')
from usertbl as u
left join buytbl as b
on u.userName = b.userName;

-- 주소에있는 문자열 글자수 확인하기,
-- amount ascii 값 확인하기. as(별칭)
select u.userName, char_length(u.addr), ascii(b.amount)
from usertbl as u
inner join buytbl as b
on u.userName = b.userName;

-- usertbl 기준으로 buytbl과 공통되는 userName 출력하고, 글자수 반환하기
select u.userName, char_length(u.userName)
from usertbl as u
inner join buytbl as b
on u.userName = b.userName;

-- '누가 구매한 상품명' 으로 리스트를 만들고, 가격과 수량 조회하기
select concat_ws('가 구매한', u.userName , b.prodName ) as list, b.price, b.amount
from usertbl as u
inner join buytbl as b
on u.userName = b.userName;

-- inner join 3 userName이 홍길동이면 1출력 아니면 0
select *, find_in_set('홍길동', u.userName) as 홍길동
from usertbl as u
inner join buytbl as b
on u.userName = b.userName;

-- userName이 야스오인 로우 찾아서 야*오로 바꾸기
select *, replace(u.userName,'쓰' ,'*')
from usertbl as u
where u.userName = '야쓰오';