-- mysql function

-- MySQL String FUnction
select ascii('B');
-- 아스키 코드 찍어내는 함수
select ascii('A');

select char_length('MY SQL TEST') as 문자길이;
-- > 공백도 문자 수에 포함됨.
select char_length('홍길동')as 이름;
select concat('boot', 'class', '100%') as class_name;
select concat_ws('->', 'boot', 'class' '100%') as class_name; 
-- 사이에 기호값 추가해서 사용 가능하다.
-- 문장열 목록 내네서 q를 검색할 수 있다.
select find_in_set('q', 's,q,l');
-- q문자열 어디에 존재하는 지 알 수있다.

select format(250500.5632, 0); 
-- 숫자형식은 "#.##.##.##"(소수점 2자리 반올림)으로 지정한다.

select lcase('HELLO JAVA');
select ucase('hellow java');
select trim('        M Y S Q L           '); -- 문자열 앞 뒤 공백제거
select replace('       aaa 11       ', ' ', ''); -- 공백 없이 replace

-- inner join 2
select a.userName, a.addr, a.mobile, b.prodName, b.price, b.amount, char_length(a.userName)
from usertbl as a -- 별칭이라는 뜻 --> a = usertbl
inner join buytbl as b
on  a.userName = b.userName;


-- usertble을 기준으로 buytbl inner join. 
-- usertbl의 이름과 번호, buytbl의 가격과 수량 데이터를 가져오고, 번호의 문자길이 조회하기
select u.userName, u.mobile, b.price, b.amount, char_length(u.mobile)
from usertbl as u
inner join buytbl as b
on u.userName = b.userName;



