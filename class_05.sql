
-- MYSQL Numberic function
select * from buytbl;

-- 절대값 구하기
select ABS(-252.2);

-- 가격의 총합 구하기
select *, sum(price) as 합계
from buytbl;
-- > 한줄로 나옴. 그냥 앞에 있는 것들에 나옴.

select sum(price) as 합계
from buytbl;

-- 서브쿼리 (3가지)
select *, (select sum(price) from buytbl) as 총합계
from buytbl;

-- 평균값 구하기
select * , avg(price) as 평균값
from buytbl;

select *, (select avg(price) from buytbl) as 평균값
from buytbl;
-- 서브쿼리 복잡하기 때문에 실행의 속도 늦어질 수 있다. 각각의 값을 날림.

-- 올림 처리
select ceil(25.12);

-- 반올림 처리
select round(134.523);
select round(134.523, 1); -- 뒤에 숫자는 소수점자리를 지정

-- 내림(버림) 처리
select floor(25.81);

select ceil(round(10.8 - 5) + 5.2);

-- max 값 
select max(price)
from buytbl;

-- min 값 
select min(price)
from buytbl;

-- usertble , buytbl 문제
-- buytbl에서 가장 비싼 값과 가장 저렴한 값을 조회하고, 가격의 평균값을 반올림하기

select max(price) as 최고금액, min(price) as 최저금액, round(avg(price)) as 평균금액
from buytbl;

-- '이승기' 고객이 구매한 제품가격의 평균 출력하기 (buytbl 사용)
select userName, avg(price) as 가격평균
from buytbl
where userName = '이승기';

-- usertbl 기준으로 서브 쿼리를 이용해서 price의 합계,max값 구하기
select *, (select sum(price) from buytbl) as 합계 , (select max(price) from buytbl) as max값
from usertbl;

-- 홍길동의 총구매금액 
select *, sum(price) as 합계
from buytbl
where userName = '홍길동';

-- 판매실적 및 총합
select *,  (select sum(price * amount)from buytbl) as 판매실적, (select sum(price) from buytbl )as 총합
from buytbl;

-- usertbl에서 최대 출생년도와 최저 출생년도 뽑아내기
select max(birthYear), min(birthYear)
from usertbl;

-- buytbl에서 구매한 상품의 평균값 구하기 (avg --> 직계함수)
select b.*, (select avg( price/amount) from buytbl where prodName = b.prodName) as 개당평균금액
from buytbl as b;

-- 가격 * 판매수량 = 판매실적 , 총합계 , 평균구매가

-- buytbl에서 총 매출과 전체 평균을 구하세요 평균은 1의 자리에서 반올림 해주세요


