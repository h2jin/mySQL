-- 서브쿼리 2
use employees;
select * from employees limit 10;
select * from dept_emp limit 10; -- employees vs dept_emp
-- 둘의 연관관계 (1 : N 관계 --> dept_emp에는 emp_no 가 여러번 들어올 수 있음.)

desc dept_emp; -- primary key 2개

select * from departments order by dept_no; -- departments vs dept_num (1 : N관계 departments 기준)

select * , dept_no as '뽑아야 되는 값'
from departments as A
where a.dept_name = 'development';

-- 문제 1 (중첩 서브쿼리) 
-- dept_emp 테이블에서 development인 emp_no 필드와 dept_no를 출력하세요
select *
from dept_emp
where dept_no = (select dept_no from departments where dept_name = 'development');

-- 문제 2 (중첩 서브쿼리)
-- employees 테이블에서 현재 develpment 메니저인 직원만 출력하시오.
select * from employees;
select * from dept_manager;

select *
from employees as a
where a.emp_no in(select emp_no 
					from dept_manager 
                    where dept_no = 'd005' 
                    and to_date = '9999-01-01');
-- 단일행 결과 집합이 나와서 외부 쿼리인 emp_no의 조건식으로 처리가 된다.
-- 단일행 결과 집합을 만들어주는 것이 훨씬 편하다

-- d005 --> development (값으로 변경해서 쿼리문을 완성해주기)
select *
from employees as a
where a.emp_no = (select emp_no 
					from dept_manager 
                    where dept_no = ( select dept_no 
										from departments
                                        where dept_name = 'development')
                    and to_date = '9999-01-01');

/*
	다중 행 서브쿼리
    결과값이 2건 이상 출력되는 것을 말한다. 
    다중행 서브쿼리는 쿼리의 결과가 여러건 출력되기 때문에
    단일행 연산자를 사용할 수 없다.
    별도의 연산자를 사용해야 한다. --보통 in
*/

select * from employees limit 10;
select * from titles;

-- join 
select a.emp_no, a.first_name, b.title
from employees as a
inner join titles as b
on a.emp_no = b.emp_no;

-- 인라인 뷰로 결과를 출력해 주세요 (from 서브쿼리)
select a.emp_no, a.first_name, b.title
from employees as a, (select * from titles) as b
where a.emp_no = b.emp_no;

-- 문제 1 
-- 직원 테이블에서 부서 팀장만 출력 하시오 (join문 사용, 단 현재 근무중인 사람만 출력)
select *
from employees as e
inner join dept_manager as d
on e.emp_no = d.emp_no
where d.to_date = '9999-01-01';

-- 문제 2 
-- 인라인 뷰로 출력하시오
select *
from employees as a ,(select * from dept_manager where to_date = '9999-01-01') as b
where a.emp_no = b.emp_no;

-- 스칼라 서브쿼리 (select절에 사용하는 서브쿼리)
-- select 절에 서브쿼리를 사용하여 하나의 컬럼처럼 사용하기 위한 목적
-- join문의 대체 표현식으로 자주 사용하지만, 스칼라 서브쿼리는 성능면에서 좋은 편은 아니다.

select *, (select dept_name 
			from departments as b 
            where a.dept_no = b.dept_no) as '부서명' -- 단일행으로 해줘야 한다!
from dept_manager as a
where to_date = '9999-01-01';

-- 스칼라 서브쿼리를 사용해서 결과를 뽑기
select * from titles;
-- 문제 employees 테이블 emp_no, first_name, (타이틀명)

-- 단일행으로 변경해줘야 한다. (title)
select e.emp_no, e.first_name , (select t.title
								from titles as t
								where e.emp_no = t.emp_no and t.to_date = '9999-01-01') as '타이틀명' 
from employees as e;
 -- 정답
select e.emp_no, e.first_name , (select t.title
								from titles as t
								where e.emp_no = t.emp_no 
                                group by emp_no) as '직함' 
from employees as e;


-- ====================
-- 문제 만들어보기!

-- 문제 1 (중첩쿼리 사용)
-- 현재 Human Resources부서에서 근무중인 직원 조회
select *
from employees 
where emp_no in (select emp_no
				from dept_emp
                where dept_no = 'd003'
                and to_date = '9999-01-01');

-- 문제 2 (인라인 뷰)
-- 여성직원의 부서 조회
select d.*, e.gender
from dept_emp as d, ( select * from employees where gender = 'F') as e
where d.emp_no = e.emp_no; 


-- 문제 3 (스칼라 서브쿼리)
-- 부서 매니저의 생년월일 조회
select d.dept_no, d.emp_no, (select e.birth_date
								from employees as e
                                where d.emp_no = e.emp_no) as '생년월일'
from dept_manager as d;
