create table salary 
	( id serial primary key,
	  monthly_salary int not null
	)
;


select * from salary;

create table roles (
	id serial primary key,
	role_title varchar(30) unique not null	
);

select * from roles;

create table salary_roles (
id serial primary key,
id_role int not null unique,
id_salary int not null,
foreign key (id_role) references roles (id),
foreign key (id_salary) references salary (id)
);


insert into salary (monthly_salary)
values (1201),(1301),(1401),(1501),(1601);

select * from salary;

insert into salary (id,monthly_salary )
values (10, 1200);

insert into roles (role_title)
values ('Qa_manual_junior'),('Qa_manual_middle'),('Qa_manual_senior'),
	('Qa_automation_junior'),('Qa_automation_middle'),('Qa_automation_senior'),
	('Dev_java_junior'),('Dev_java_middle'),('Dev_java_senior'),
	('Dev_c_junior'),('Dev_c_middle'),('Dev_c_senior'),
	('HR_manager'),('Designer'),('Manager');

select * from roles;
	
insert into salary_roles (id_role, id_salary)
values (4,1), (5,2), (6,3), (7,4);

select * from salary_roles;

--alter table salary_roles 
--drop column devices;

alter table salary_roles 
add column devices varchar(50) default 'nokia 3310'; 

--delete from salary_roles
--where salary_roles.id = 4

--update salary_roles
--set id=2 where id = 10

alter table roles 
add column parking bool default false;

select * from roles;

alter table roles 
rename column parking to taxi;

alter table roles 
alter column taxi type varchar (40) using taxi::varchar(30);