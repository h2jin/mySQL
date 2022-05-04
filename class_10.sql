use employees;

-- 그룹함수와 그룹바이, having 절

-- GROUP BY 절 : 데이터들을 원하는 그룹으로 나눌 수 있다. 
-- 나누고자하는 그룹의 컬럼명을 select절과 GROUP BY 절 뒤에 추가하면 된다.
-- sum 등 --> 집계함수와 함께 사용되는 상수는 GROUP BY  절에 추가하지 않아도 된다.(많이 실수하는 부분)

-- DISTINCT 와 GROUP BY절alter
-- distinct : 주로 중복을 제거하기 위해서 사용한다.
-- 그룹바이는 데이터를 그룹화해서 그 결과를 가져오는 경우 사용한다. 둘이 헷갈리지 말기
-- 하지만 두 작업은 조금만 생각해보면 동일한 형태의 작업이라는 것을 알 수 있고, 
-- 일부 작업의 경우 distinct로 동시에 처리할 수도 있다. 

-- Having 절 
-- where절에서는 집계함수를 사용할 수 없다.
-- having절은 집계함수를 가지고 조건을 비교할 때 사용한다.
-- 즉, having 절은 group by절과 함께 사용된다.

show tables;

select * from departments; -- 부서
select * from dept_emp limit 10; 
select * from dept_manager; 
select * from employees limit 10;
select * from salaries;
select * from titles;

-- 합계 함수
-- 문제 1. 전체 직원수 (전체 직원수), 제일 먼저 입사한 일자 (최초 고용일자), 제일 마지막 입사일자(가장 최근 고용일자)
select count(*) as '전체 직원수', min(hire_date) as '최초 고용일자', max(hire_date) as '가장 최근 고용일자'
from employees;

-- 문제 2. gender로 그룹화
select *
from employees
group by gender;

-- 문제 3. 남성, 여성 수와 gender를 표시하세요
select gender, count(*) as '인원수'  
from employees
group by gender;

-- 문제 4. 고용일자로 그룹화
select hire_date, count(hire_date)
from employees
group by hire_date;

-- 문제 5. 고용일자가 같은 직원의 명수를 표시하시오.
-- 전체, as 동기
select *, count(emp_no) as 동기
from employees
group by hire_date;

-- 문제 6. 위 쿼리에서 남성과, 여성을 구분해서 결과값을 구하시오 --> 남성과 여성도 그룹화
select *, count(hire_date) as 동기
from employees
group by hire_date, gender
order by hire_date desc; -- asc

--
select * from salaries;
desc salaries; -- primary key 2개 = 둘 중 하나라도 달라야함.
-- 급여테이블에서
-- 총 건수, 총 급여, 평균 급여 (소수 2째), 최고 연봉자 금액, 최소연봉자 금액
select count(*) as 총건수, round(avg(salary),2) as 평균급여, max(salary) as 최고연봉금, min(salary) as 최소연봉금
from salaries;

-- 데이터 검증, 그룹화 후 데이터 하나씩 검증해보기
select max(salary) from salaries;

-- having절 연습
-- 연봉을 10번 이상 받은 직원들을 출력 (having절)
select *, count(emp_no) as 횟수
from salaries
group by emp_no
having count(emp_no) >= 10
order by emp_no asc
limit 30;

-- 문제 
select * from titles limit 10;

select count(*) from titles;

-- 10만명 이상 사용하고 있는 직함의 이름과 직원의 수를 출력하시오.
select title as 직함, count(emp_no) as 직원수
from titles
group by title
having count(emp_no) >= 100000
order by emp_no asc;

-- 5만명 이상 근무하고 있는 부서의 부서 번호와 부서 소속 사원의 수를 출력
select * from dept_emp limit 10;

select dept_no as 부서번호, count(emp_no) as 사원수
from dept_emp
group by dept_no
having count(emp_no) > 50000
order by count(*) asc;

select * from dept_emp;
-- 현재 근무중인 사람들만 출력하시오
select * , count(*)
from dept_emp
where to_date = '9999-01-01';

select * from dept_manager;
-- 각 부서별 과거의 매니저의 수를 구하시오 (퇴사자)
select count(emp_no)
from dept_manager
group by dept_no
having to_date <> '9999-01-01';

-- 자바에서 같지 않다 -> !=, mysql에서는 <>

select count(*)
from dept_manager
where to_date <> '9999-01-01';

-- 그룹함수 , 그룹바이, having 절 + join문 문제만들기
-- 데이터 검증 확실히하기
select * from employees limit 10;
select * from salaries;
select * from dept_emp;
desc employees;
desc salaries;
desc dept_emp;


-- 재직자 중에서 가장 연봉이 높은 10명의 직원이름과 연봉을 출력해주세요



