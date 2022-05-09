-- 도전과제 
use employees;
select * from employees;
select * from salaries;
select * from titles;
select * from departments;
select * from dept_emp;
select * from dept_manager;

-- employees join 5개 이상
-- 1. employees, titles 직원의 직함 조회
select e.*, t.title
from employees as e
inner join titles as t
on e.emp_no = t.emp_no;
-- 2. 여자 직원들의 부서 조회
select d.*, e.gender
from dept_emp as d
inner join employees as e
on d.emp_no = e.emp_no
where e.gender = 'F';
-- 3. 부서별로 입사 날짜가 가장 빠른 직원번호 출력
select a.emp_no, b.dept_no, a.hire_date
from employees a
inner join dept_emp b
on a.emp_no = b.emp_no
group by b.dept_no
having min(a.hire_date);
-- 4. 연봉이 가장 높은 직원 조회
select e.*, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no
having max(s.salary);
-- 5. 개발부서에서 근무중인 직원 출력
select e.*, d.dept_name
from dept_emp as e
inner join departments as d
on e.dept_no = d.dept_no
where d.dept_name = 'Development';
-- 서브쿼리 5개 이상