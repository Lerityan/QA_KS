create table employees
( id serial primary key,
   employee_name Varchar(50) not null
   )
   
INSERT INTO employees (employee_name) VALUES('Andrea Ainsworth');
INSERT INTO employees (employee_name) VALUES('Katelyn Wade');
INSERT INTO employees (employee_name) VALUES('Alison Groves');
INSERT INTO employees (employee_name) VALUES('Greta Kennedy');
INSERT INTO employees (employee_name) VALUES('Celina Edwards');
INSERT INTO employees (employee_name) VALUES('Clarissa Saunders');
INSERT INTO employees (employee_name) VALUES('Charlize Mcguire');
INSERT INTO employees (employee_name) VALUES('Caleb King');
INSERT INTO employees (employee_name) VALUES('Holly Torres');
INSERT INTO employees (employee_name) VALUES('Javier Hilton');
INSERT INTO employees (employee_name) VALUES('Carmella Franks');
INSERT INTO employees (employee_name) VALUES('Barney Edmonds');
INSERT INTO employees (employee_name) VALUES('Felicity Wren');
INSERT INTO employees (employee_name) VALUES('Leah Walker');
INSERT INTO employees (employee_name) VALUES('Sienna Mould');
INSERT INTO employees (employee_name) VALUES('Rosa Pickard');
INSERT INTO employees (employee_name) VALUES('Rick Funnell');
INSERT INTO employees (employee_name) VALUES('Benjamin Rogers');
INSERT INTO employees (employee_name) VALUES('Mason Tobin');
INSERT INTO employees (employee_name) VALUES('Carter Chappell');
INSERT INTO employees (employee_name) VALUES('Josh Flynn');
INSERT INTO employees (employee_name) VALUES('Adelaide Weasley');
INSERT INTO employees (employee_name) VALUES('Denny Ross');
INSERT INTO employees (employee_name) VALUES('Jackeline Little');
INSERT INTO employees (employee_name) VALUES('Daron Collis');
INSERT INTO employees (employee_name) VALUES('Johnathan Vaughan');
INSERT INTO employees (employee_name) VALUES('Julius Norman');
INSERT INTO employees (employee_name) VALUES('Sadie Wellington');
INSERT INTO employees (employee_name) VALUES('Eileen Curtis');
INSERT INTO employees (employee_name) VALUES('Anne Knight');
INSERT INTO employees (employee_name) VALUES('Caitlyn Khan');
INSERT INTO employees (employee_name) VALUES('Lucas Appleton');
INSERT INTO employees (employee_name) VALUES('Rocco Flynn');
INSERT INTO employees (employee_name) VALUES('Cadence Roman');
INSERT INTO employees (employee_name) VALUES('Russel Judd');
INSERT INTO employees (employee_name) VALUES('Gabriel Allen');
INSERT INTO employees (employee_name) VALUES('Abdul Edmonds');
INSERT INTO employees (employee_name) VALUES('Fred Skinner');
INSERT INTO employees (employee_name) VALUES('Chelsea Pearson');
INSERT INTO employees (employee_name) VALUES('Jaylene Powell');
INSERT INTO employees (employee_name) VALUES('Michael Butler');
INSERT INTO employees (employee_name) VALUES('Kieth Ventura');
INSERT INTO employees (employee_name) VALUES('Priscilla Olivier');
INSERT INTO employees (employee_name) VALUES('Kurt Corbett');
INSERT INTO employees (employee_name) VALUES('Mark Ellis');
INSERT INTO employees (employee_name) VALUES('Rufus Middleton');
INSERT INTO employees (employee_name) VALUES('Ron Flanders');
INSERT INTO employees (employee_name) VALUES('Camellia Hogg');
INSERT INTO employees (employee_name) VALUES('Esmeralda Dowson');
INSERT INTO employees (employee_name) VALUES('Danny Drew');
INSERT INTO employees (employee_name) VALUES('Alexander Griffiths');
INSERT INTO employees (employee_name) VALUES('Rufus Ellison');
INSERT INTO employees (employee_name) VALUES('Sebastian Mitchell');
INSERT INTO employees (employee_name) VALUES('Jacob Uddin');
INSERT INTO employees (employee_name) VALUES('Peter Allcott');
INSERT INTO employees (employee_name) VALUES('Adalind Warner');
INSERT INTO employees (employee_name) VALUES('Anabel Camden');
INSERT INTO employees (employee_name) VALUES('Julia Faulkner');
INSERT INTO employees (employee_name) VALUES('Matthew Darcy');
INSERT INTO employees (employee_name) VALUES('Lorraine Saunders');
INSERT INTO employees (employee_name) VALUES('Gabriel Morley');
INSERT INTO employees (employee_name) VALUES('Alan Henderson');
INSERT INTO employees (employee_name) VALUES('Agnes John');
INSERT INTO employees (employee_name) VALUES('Phillip Bailey');
INSERT INTO employees (employee_name) VALUES('Phoebe Jennson');
INSERT INTO employees (employee_name) VALUES('Wade Spencer');
INSERT INTO employees (employee_name) VALUES('Peter Kennedy');
INSERT INTO employees (employee_name) VALUES('Isla Sloan');
INSERT INTO employees (employee_name) VALUES('Clint Ranks');
INSERT INTO employees (employee_name) VALUES('Javier Morris');

--https://www.onlinedatagenerator.com/

select * from employees;

create table salary 
( id serial primary key,
  monthly_salary int not null
);


--set counter =1000;
--WHILE counter <=2500   
--BEGIN  
--insert into salary(monthly_salary) values counter;        
--counter = counter +100;            
--END  
-- вы€снить почему не пашет

insert into salary(monthly_salary)
values (1000), ( 1100), ( 1200), ( 1300), ( 1400), ( 1500), ( 1600), ( 1700), ( 1800), ( 1900), ( 2000), ( 2100), ( 2200), ( 2300), ( 2400), ( 2500);


select * from salary;

create table employee_salary
(id serial primary key,
employee_id int not null unique,
salary_id int not null)


insert into employee_salary(employee_id, salary_id)
values 
(3,7),
(1,4),
(5,9),
(40,13),
(23,4),
(11,2),
(52,10),
(15,13),
(26,4),
(16,1),
(33,7),
(2,11
), (4,6
), (6,13
), (7,15
), (8,9
), (9,8
), (25,7
), (27,4
), (28,7
), (29,12
), (30,14
), (31,8
), (32,15
), (34,13
), (35,6
), (36,10
), (37,9
), (38,14
), (39,9
), (81,15
), (82,11
), (83,7
), (84,6
), (85,14
), (86,5
), (87,14
), (88,14
), (89,6
), (90,10)


select * from employee_salary order by employee_id asc;

create table roles 
(	id serial primary key,
	role_name int not null unique
)

alter table roles 
alter column role_name type varchar(30);

insert into roles (role_name)
values ('Junior Python developer'), ('Middle Python developer'), ('Senior Python developer'), ('Junior Java developer'), ('Middle Java developer'), ('Senior Java developer'), ('Junior JavaScript developer'), ('Middle JavaScript developer'), ('Senior JavaScript developer'), ('Junior Manual QA engineer'), ('Middle Manual QA engineer'), ('Senior Manual QA engineer'), ('Project Manager'), ('Designer'), ('HR'), ('CEO'), ('Sales manager'), ('Junior Automation QA engineer'), ('Middle Automation QA engineer'), ('Senior Automation QA engineer')

select * from roles;


create table roles_employee
( id serial primary key,
  employee_id int not null unique references employees(id),
  role_id int not null references roles(id)
)


insert into roles_employee (employee_id, role_id)
values (7,2),(20,4),(3,9),(5,13),(23,4),(11,2),(10,9),(22,13),(21,3),(34,4),(6,7),(1,14), (2,12), (4,8), (8,8), (9,7), (12,1), (13,4), (14,5), (15,16), (16,14), (17,13), (18,19), (19,19), (24,6), (25,8), (26,14), (27,12), (28,11), (29,15), (30,6), (31,3), (32,11), (33,4), (35,16), (36,4), (37,6), (38,11), (39,1), (40,19);

select * from roles_employee;


