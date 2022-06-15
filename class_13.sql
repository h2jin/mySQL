create database movie;

use movie;

create table 영화(
	번호 int not null primary key,
    이름 varchar(30),
    개봉연도 int,
    매출액 int,
    관객수 int,
    평점 decimal(4,2),
    unique key (이름)
);

create table 배우(
	번호 int not null primary key,
    이름 varchar(30),
    출생 datetime,
    키 int,
    몸무게 int,
    배우자 varchar(30)
);

create table 출연(
	영화번호 int not null,
    배우번호 int not null,
    역할 int,
    역 varchar(30),
    foreign key(영화번호) references 영화(번호),
    foreign key(배우번호) references 배우(번호)
);

drop table 출연;
-- alter table 출연 drop primary key;
-- alter table 출연 add primary key(영화번호, 배우번호);


INSERT INTO 영화(번호,이름,개봉연도,매출액,관객수,평점) VALUES(1,'명량',2014,135748398910,17613682,8.49);
-- 오류 발생 
-- alter table 영화 modify 매출액 decimal(14);
INSERT INTO 영화(번호,이름,개봉연도,관객수,평점) VALUES(2,'쉬리',1999,5820000,8.79);
INSERT INTO 영화(번호,이름,개봉연도,매출액,관객수,평점) VALUES(3,'광해,왕이 된 남자',2012,88900208769,12319542,9.23);
INSERT INTO 영화(번호,이름,개봉연도,매출액,관객수,평점) VALUES(4,'도둑들',2012,93665568500,12983330,7.60);
INSERT INTO 영화(번호,이름,개봉연도,관객수,평점) VALUES(5,'엽기적인 그녀',2001,1735692,9.29);
INSERT INTO 영화(번호,이름,개봉연도,매출액,관객수,평점) VALUES(6,'변호인',2013,82871759300,11374610,8.97);
INSERT INTO 영화(번호,이름,개봉연도,관객수,평점) VALUES(7,'밀양',2007,1710364,7.76);
INSERT INTO 영화(번호,이름,개봉연도,관객수,평점) VALUES(8,'태극기 휘날리며',2004,11746135,9.15);
INSERT INTO 영화(번호,이름,개봉연도,평점) VALUES(9,'초록물고기',1997,8.79);
INSERT INTO 영화(번호,이름,개봉연도,평점) VALUES(10,'은행나무 침대',1996,7.67);
INSERT INTO 영화(번호,이름,개봉연도,매출액,관객수,평점) VALUES(11,'님은 먼 곳에',2008,11211235000,1706576,7.80);
INSERT INTO 영화(번호,이름,개봉연도,평점) VALUES(12,'반제의 제왕:왕의 귀환',2003,9.36);
INSERT INTO 영화(번호,이름,개봉연도,평점) VALUES(13,'그녀',2014,8.51);
INSERT INTO 영화(번호,이름,개봉연도,평점) VALUES(14,'관상',2013,7.96);

select * from 영화;


select * from 배우;
INSERT INTO 배우(번호,이름,출생,키,몸무게) VALUES (1,'최민식','1962-04-27',177,70);
INSERT INTO 배우(번호,이름,출생) VALUES (2,'류승룡','1970-11-29');
INSERT INTO 배우(번호,이름,출생,키,몸무게,배우자) VALUES (4,'한석규','1964-11-03',178,64,'임명주');
INSERT INTO 배우(번호,이름,출생,키,몸무게) VALUES (5,'송강호','1967-01-17',180,80);
INSERT INTO 배우(번호,이름,키,몸무게,배우자) VALUES(6,'이병헌',177,72,'이민정');
INSERT INTO 배우(번호,이름,키,몸무게) VALUES (7,'한효주',172,48);
INSERT INTO 배우(번호,이름,출생,키,몸무게) VALUES(8,'전지현','1981-10-30',174,52);
INSERT INTO 배우(번호,이름,출생,키,몸무게) VALUES(10,'김혜수','1970-09-05',170,50);
INSERT INTO 배우(번호,이름,출생,키,몸무게,배우자) VALUES(12,'차태현','1976-03-25',175,65,'최석은');
INSERT INTO 배우(번호,이름,키,배우자) VALUES(15,'전도연',165,'강시규');
INSERT INTO 배우(번호,이름,키,몸무게,배우자) VALUES(16,'장동건',182,68,'고소영');
INSERT INTO 배우(번호,이름,출생,키,몸무게,배우자) VALUES(17,'심혜진','1967-01-16',169,51,'한상구');
INSERT INTO 배우(번호,이름,키,몸무게) VALUES(18,'수애',168,46);
INSERT INTO 배우(번호,이름) VALUES(19,'주진모');

select * from 출연; 
INSERT INTO 출연 VALUES(1,1,1,'이순신');
INSERT INTO 출연 VALUES(1,2,1,'구루지마');
INSERT INTO 출연 VALUES(2,4,1,'유중원');
INSERT INTO 출연 VALUES(2,1,1,'박무영');
INSERT INTO 출연 VALUES(2,5,1,'이장길');
INSERT INTO 출연 VALUES(3,6,1,'광해/하선');
INSERT INTO 출연 VALUES(3,2,1,'허균');
INSERT INTO 출연 VALUES(3,7,1,'중전');
INSERT INTO 출연 VALUES(4,10,1,'팹시');
INSERT INTO 출연 VALUES(4,8,1,'애니콜');
INSERT INTO 출연 VALUES(4,19,2,'반장역');
INSERT INTO 출연 VALUES(5,8,1,'그녀');
INSERT INTO 출연 VALUES(5,12,1,'견우');
INSERT INTO 출연 VALUES(6,5,1,'송우석');
INSERT INTO 출연 VALUES(7,15,1,'피아노 학원 강사,이신애');
INSERT INTO 출연 VALUES(7,5,1,'카센터 사장,김종찬');
INSERT INTO 출연 VALUES(8,16,1,'이진태');
INSERT INTO 출연 VALUES(9,4,1,'막둥');
INSERT INTO 출연 VALUES(9,17,1,'미애');
INSERT INTO 출연 VALUES(10,4,1,'수현');
INSERT INTO 출연 VALUES(10,17,1,'선영');
INSERT INTO 출연 VALUES(11,18,1,'시골 아낙,순이|가수,써니');
INSERT INTO 출연 VALUES(11,19,1,'기타리스트,성찬 역');
INSERT INTO 출연 VALUES(10,17,2,'선영');


SELECT * FROM 영화;
-- 문제 1 : 평점이 9이상인 영화의 이름과 평점을 검색하라.
select 이름, 평점
from 영화
where 평점>=9;

-- 문제 2 : '쉬리'라는 이름을 가진 영화가 개봉된 연도를 검색하라.
select 개봉연도
from 영화
where 이름 = '쉬리';

-- 문제 3 : '왕'이라는 문자열이 포함된 이름을 가진 영화의 이름과 평점을 검색하라.
select 이름, 평점
from 영화
where 이름 like'%왕%';

-- 문제 4 : '왕'이라는 문자열이 포함된 이름을 가진 영화의 이름과 평점을 검색하되, 개봉연도를 기준으로 정렬하라.
select 이름, 평점
from 영화
where 이름 like'%왕%'
order by 개봉연도;

-- 문제 5 : '그녀'라는 단어가 포함된 영화의 이름과 평점을 검색하라.
select 이름, 평점
from 영화
where 이름 like'%그녀%';

-- 문제 6 : 번호가 1,2,3인 영화의 이름을 검색하라.
select 이름
from 영화
where 번호 < 4;

-- 문제 7 : 이름이 '변호인'인 영화 번호를 검색하라.
select 이름, 번호
from 영화
where 이름 = '변호인';

-- 문제 8 : 영화배우 '송강호'의 배우 번호를 검색하라.
select 번호
from 배우
where 이름 = '송강호';

-- 문제 9 : 번호가 1인 영화에 출연한 배우의 이름을 검색하라.
select a.이름
from 배우 as a
inner join 출연 as b
on a.번호 = b.배우번호
where b.영화번호 = 1;

-- 문제 10: 이름이 '도둑들'인 영화에 출연한 배우의 이름을 검색하라.
select b.이름
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
inner join 영화 as c
on a.영화번호 = c.번호
where c.이름 = '도둑들';

-- 문제 11 : 영화 배우 '송강호'가 출연한 영화 이름을 검색하라.
select c.이름
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
inner join 영화 as c
on a.영화번호 = c.번호
where b.이름 = '송강호';

-- 문제 12 : 영화 배우 '주진모'가 주연으로 출연하지 않은 영화 이름을 검색하라. 
-- select * from 출연;

select *
from 출연 as a
inner join 배우 as b on a.배우번호 = b.번호
inner join 영화 as c on a.영화번호 = c.번호
where b.이름 = '주진모' and a.역할 > 1;

-- 주진모가 출연하지 않은 영화 중 주연이 아닌 배우 검색
select *
from 출연 as a
inner join 배우 as b on a.배우번호 = b.번호
inner join 영화 as c on a.영화번호 = c.번호
where b.이름 not in('주진모') and a.역할 > 1;



-- 문제 13 :  2012년 개봉한 영화의 이름과 그 영화에 출연한 주연배우를 검색하라.
select c.이름, b.*, a.역할
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
inner join 영화 as c
on a.영화번호 = c.번호
where c.개봉연도 = 2012 and a.역할 = 1;

-- 문제 14 : 영화배우 '송강호'가 가장 바쁜 해는 언제일까? 년도별 출연작품 수를 검색하라.
select count(c.번호)
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
inner join 영화 as c
on a.영화번호 = c.번호
where b.이름 = '송강호'
group by c.개봉연도;

-- 문제 15 : 모든 영화에 따른 모든 주연 배우의 이름을 검색하라. 
select c.이름, a.역할, b.이름
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
inner join 영화 as c
on a.영화번호 = c.번호
where a.역할 = 1;

-- 문제 16 : 2회 이상 주연으로 출연한 영화배우의 이름을 검색하라.
select b.이름
from 출연 as a
inner join 배우 as b
on a.배우번호 = b.번호
where a.역할 = 1
group by b.이름
having count(b.이름) >= 2;


-- 문제 17 : 영화배우 '송강호'와 함께 출연한 배우들을 모두 검색하라.(단.송강호 제외)

select a.이름
from 배우 as a
inner join 출연 as b
on a.번호 = b.배우번호
where a.이름 != '송강호'
and b.영화번호 in (select a.영화번호
				from 출연 as a
                inner join 배우 as b
                on a.배우번호 = b.번호
                where b.이름 = '송강호');

-- 송강호가 출연한 영화를 출력하고, 그 영화들의 배우를 출력(송강호 제외)

select a.이름
from 배우 as a
inner join 출연 as b on a.번호 = b.배우번호
where a.이름 <> '송강호'
and b.영화번호 in (select a.영화번호
				from 출연 as a 
				inner join 배우 as b on a.배우번호 = b.번호
				where b.이름 = '송강호');


