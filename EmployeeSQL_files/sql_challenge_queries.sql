--1.
select employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary
from salaries
	inner join employee on
	employee.emp_no=salaries.emp_no;
	
--2.
select first_name, last_name, hire_date
from employee
	where hire_date between '1986-01-01' and '1986-12-31';


--3.
select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
	inner join 
	dept_manager as dm
	on d.dept_no=dm.dept_no
	inner join 
	employee as e
	on dm.emp_no = e.emp_no

--4. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
	inner join
	dept_employee as de
	on e.emp_no = de.emp_no
	inner join
	departments as d
	on d.dept_no = de.dept_no

--5.
select first_name, last_name, sex
	from employee
	where first_name = 'Hercules' and last_name like 'B%'


--6. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
	from employee as e
	inner join
	dept_employee as de
	on e.emp_no = de.emp_no
	inner join
	departments as d
	on de.dept_no = d.dept_no
	where d.dept_name = 'Sales'
	
--7. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee as e
	inner join
	dept_employee as de
	on e.emp_no = de.emp_no
	inner join 
	departments as d
	on de.dept_no = d.dept_no
	where d.dept_name in ('Sales', 'Development')

--8.
select e.last_name, count(*)
from employee as e
	group by e.last_name
	order by 2 desc
	