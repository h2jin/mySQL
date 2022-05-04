
-- MYSQL에서 계정 생성 및 권한 관리

-- 현재 사용자 계정 확인
show databases;
use mysql;

select host, user from user; 
-- % -> 어디에서나 접근 가능한..alter

-- 1. 사용자 추가 및 권한 세팅(첫번째 방법) 계정 생성하는 방법
create user tester1@localhost identified by 'asd123';
-- 권한 설정
grant select, insert, update, delete on shop_db.* to 'tester1'@'localhost';

-- MYSQL 8에서 계정 생성 방법은 (계정 생성 후, 모든 권한을 할당. 한번에 되지 않음)


-- 2. 모든 데이터베이스에 권한 할당, localhost만 접근 허용 (2번째 방법)
 create user tester2@localhost identified by 'asd123';
 grant all privileges on *.* to tester2@localhost with grant option;
 flush privileges;
 
 -- 3. 외부 접속 허용 계정 --> 외부에서도 모든 접속을 허용
 create user tester3@'%' identified by 'asd123';
 grant all privileges on *.* to tester3@'%' with grant option;
 
 -- 4. 계정 삭제방법
 drop user 'tester3'@'%';
 drop user tester2@localhost;
 
 -- DB에 만들어진 모든 테이블 확인
 use shopdb;
 
 show full tables;
 
 -- 뷰 생성
 create view usertbl_view as select userName, birthYear, addr from usertbl;
 select * from usertbl_view;
 
 -- 가상테이블에만 접근 가능한 계정 만들어보기
 use mysql;
 select * from user;
 
 create user tencoding@'%' identified by 'asd123';
 grant select on shopdb.usertbl_view to tencoding@'%'; 
 
 -- 
 select * from producttbl;
 -- producttbl의 productId, productName, cost, company에 접근할 수 있는 뷰를 생성하고,
 -- 이에 삭제만 불가능한 계정 만들기 (외부 접속 허용)
create view producttbl_view 
as select productId, productName, cost, company
from producttbl;

create user tester2@'%' identified by 'asd123';
grant select, insert, update on shopdb.producttbl_view to tester2@'%';
-- drop user tester@'%';

-- 외부에서 접근할 수 있는 korea_it 계정 생성하고 shopdb의 producttbl 테이블 조회할 수 있는 권한 부여하기
create user 'korea_it'@'%' identified by 'asd123';
grant select on shopdb.producttbl to 'korea_it'@'%';
drop user 'korea_it'@'%';


 
 
 
 