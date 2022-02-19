-- 1

select employee_name as name, monthly_salary as salary from employees 
						join employee_salary on (employees.id = employee_id)
						join salary on (salary.id = salary_id)
						
					
-- 2					
					
select employee_name as name, monthly_salary as salary from employees 
						join employee_salary on (employees.id = employee_id)
						join salary on (salary.id = salary_id)
where 						
monthly_salary < 2000;



-- создаем волонтера 
insert into employees (employee_name)
values ('Mr. Nocash');

-- назначаем ему волонтерскую зп

insert into employee_salary (employee_id, salary_id) 
(select employees.id, 50 from employees where employee_name = 'Mr. Nocash'); 

-- 3

select monthly_salary as salary from employees 
						join employee_salary on (employees.id = employee_id)
						right join salary on (salary.id = salary_id)
where employee_id is null;

-- 4

select monthly_salary as salary from employees 
						join employee_salary on (employees.id = employee_id)
						right join salary on (salary.id = salary_id)
where (employee_id is null) and (monthly_salary<2000);

-- 5
select employee_name as name, monthly_salary as salary from employees 
						join employee_salary on (employees.id = employee_id)
						left join salary on (salary.id = salary_id)
where 						
monthly_salary is null;

-- 6 

select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id);

-- 7
select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
where role_name like '%Java dev%';

-- 8 
select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
where role_name like '%Python dev%';

-- 9

select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
where role_name like '%QA%';

-- 10 
select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
where role_name like '%Manual QA%';

-- 11

select employee_name as name,  role_name as role from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
where role_name like '% Automation QA%';

-- 12

select employee_name, monthly_salary, role_name from employees left join roles_employee on (employees.id = employee_id)
															  left join roles on (roles.id = role_id)
															  left  join employee_salary on (employees.id = employee_salary.employee_id)
															  left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Junior%';


-- 13

select employee_name, monthly_salary, role_name from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Middle%';



-- 14


select employee_name, monthly_salary, role_name from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Senior%';

-- 15


select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Java %';

-- 16															  
															  
select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Python%';
						
-- 17

select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Junior Python%';

-- 18

select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Middle JavaS%';

-- 19 

select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Senior Java %';

-- 20

select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Junior QA%';

-- 21

select round(avg(monthly_salary),2) as avg_salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Junior%';

-- 22

select round(avg(monthly_salary),2) as avg_salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Junior%';

-- 23
															   
select sum(monthly_salary) as sum_salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%JavaS%';

-- 24
select min(monthly_salary) as sum_salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%QA%';

-- 25

select max(monthly_salary) as sum_salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%QA%';

-- 26 
select count(employees.id) as qa_total from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%QA%';

-- 27
select count(employees.id) as mid_total from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%Middle%';

-- 28

select count(employees.id) as mid_total from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   join salary on (employee_salary.salary_id = salary.id)
where role_name like '%dev%';

-- 29
select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
order by name asc, role asc, salary asc;

-- 30
select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where monthly_salary between 1700 and 2300														  
order by name asc, role asc, salary asc;

-- 31
select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where monthly_salary < 2300	or monthly_salary is null													  
order by name asc, role asc, salary asc;

-- 32
select employee_name as name,  role_name as role, monthly_salary as salary from employees left join roles_employee on (employees.id = employee_id)
															   left join roles on (roles.id = role_id)
															   left join employee_salary on (employees.id = employee_salary.employee_id)
															   left join salary on (employee_salary.salary_id = salary.id)
where monthly_salary in (1100, 1500, 2000)													  
order by name asc, role asc, salary asc;




