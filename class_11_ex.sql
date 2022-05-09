use employees;
select * from employees;
select * from salaries;
select * from titles;
select * from departments;
select * from dept_emp;
select * from dept_manager;
-- 중첩 
-- 직급이 Senior Engineer 인 직원의 정보만 출력하기
select * 
from employees
where emp_no in(select emp_no from titles where title = 'Senior Engineer');
-- 인라인뷰
-- 연봉이 80_000이상인 사람의 정보만 출력하시오 ( employees 테이블 사용하기 )
select *
from employees as e, (select * from salaries where salary > 80000 group by emp_no) as s
where e.emp_no = s.emp_no;
-- 스칼라 
-- 직원의 사번과 last_name, 연봉을 출력하라 
select e.emp_no, e.last_name, (select salary 
								from salaries as s 
                                where e.emp_no = s.emp_no
                                group by s.emp_no) as '연봉'
from employees as e;
-- 중첩 서브쿼리
-- 개발팀 manager 중 2000년 1월 1일 이전 퇴사자
select * 
from employees
where emp_no = (select emp_no
				from dept_manager
                where to_date < '2000-01-01' and dept_no = (select dept_no
															from departments
                                                            where dept_name = 'development')
                 );
-- 인라인 뷰
-- 직원 테이블에서 2000년 1월 1일 이전 퇴사한 부서 팀장만 출력
select *
from employees as e, (select * 
					from dept_manager
                    where to_date < '2020-01-01') as d
where e.emp_no = d.emp_no;
-- 스칼라 서브쿼리
-- 직원 테이블에서 emp_no, first_name 출력하고 알맞은 부서번호 dept_emp 테이블에서 출력

use shopdb;
select * from usertbl;
select * from buytbl;


select * 
from usertbl as u
left join buytbl as b
on u.userName = b.userName
where b.userName is not null;