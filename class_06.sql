
-- MySQL Date Function

-- 현재 날짜 출력하는 함수
select curdate(); -- 연-월-일
select current_date(); -- 위와 같음

-- 현재 시간을 출력하는 함수
select curtime(); -- 시-분-초
select current_time(); -- 위와 같음

-- 일자를 반환하는 함수
select day('2017-06-15');
select day(curdate()); -- 오늘의 일자를 반환 

--
select week('2017-06-15'); -- 주를 계산하여 출력 
select week(curdate()); 

select weekday('2017-06-15'); -- 목요일이었다는 것을 알 수 있음 
select weekday(curdate()); -- 화요일 
-- 1주일 안에 월 0, 화 1, 수 2, ...

-- 날짜와 시간 한번에 모두 출력
select now();
select sysdate();

-- 문자열을 timestamp라는 데이터타입으로 반환하는 것.
select timestamp('2019-06-15', '13:10:11');
-- 문자열, 시간 date 데이터타입을 맞춰야 하는 경우 사용한다.
-- 인수에 따라서 datetime값을 반환한다.

-- 시간의 차이를 계산하고 싶은 경우
select timediff('13:10:11', '13:10:10');
select timediff('2022-05-03 13:10:11', '2022-4-03 13:10:10'); -- 두 날의 시간차이 계산
select timediff(now(), '2021-01-03 13:10:10'); -- 최대 범위 확인! 838:59:59가 최대

-- 날짜 빼기
select subdate(now(), interval 10 day); -- 오늘날짜에서 10일을 뺀 것.
-- 날짜 더하기
select date_add(sysdate(), interval 10 day);

select system_user();
select session_user();
select current_user();
select version();

-- null 값이라면 null이 아닌 X표시를 띄운다.
select nullif('X', null);
select nullif('Hello', null);

-- 문제 만들어보기
-- 부트캠프 종강일의 요일 조회 (종강일 8월 8일)
select weekday('2022-08-08');

-- 수업이 끝나는 시간까지 남은 시간 계산
select timediff('18:00:00', curtime());

-- 기념일 언제인지 출력해보기 ( 100일, 200일, 1000일 등)
select date_add(curdate(), interval 100 day);
select date_add(curdate(), interval 200 day);
select date_add(curdate(), interval 1000 day);

-- 오늘날짜로부터 어린이날까지 남은 시간
select now() as 지금시간, timestamp('2022-05-05') as 어린이날, timediff('2022-05-05 00:00:00', now()) as 남은시간;
select curdate() as 오늘날짜, timediff('2022-05-05 00:00:00', now());

-- timestamp로 주문날짜 정하고 date_add로 5일 추가해서 도착날짜 정하기

select b.userName, b.prodName, b.price, b.amount, timestamp(now()) as 주문날짜, (select date_add(curdate(), interval 5 day)) as 도착날짜
from buytbl as b
where b.userName = '이승기';


