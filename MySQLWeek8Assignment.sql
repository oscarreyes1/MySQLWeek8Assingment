show tables;
desc titles;
desc employees;
desc salaries;
desc departments;
desc dept_emp;

select titles.title, count(titles.title) 
from employees 
inner join titles on employees.emp_no = titles.emp_no
where employees.birth_date > '1965-01-01' 
group by titles.title;

select titles.title, avg(salaries.salary) 
from salaries
inner join titles on salaries.emp_no = titles.emp_no
group by titles.title;

 select departments.dept_name, sum(salaries.salary)
 from departments
 inner join dept_emp on departments.dept_no = departments.dept_no
 inner join salaries on salaries.emp_no = dept_emp.emp_no
 where departments.dept_name = 'Marketing' 
 and dept_emp.from_date >= '1990-01-01'
 and dept_emp.to_date <= '1992-12-31'
 group by departments.dept_name;