
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

select ceil(round(10 - 5) + 5);

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




