-- создание таблицы employess2
create table employees2 (
id serial primary key,
employee_name varchar (50) not null
);
-- заполнение строки employee_name 70 именами
insert into employees2 (employee_name)
values ('a'),
	   ('b'),
	   ('c'),
	   ('d'),
	   ('f'),
	   ('g'),
	   ('q'),
	   ('w'),
	   ('e'),
	   ('r'),
	   ('t'),
	   ('y'),
	   ('u'),
	   ('i'),
	   ('o'),
	   ('p'),
	   ('s'),
	   ('f'),
	   ('h'),
	   ('j'),
	   ('k'),
	   ('l'),
	   ('z'),
	   ('x'),
	   ('v'),
	   ('n'),
	   ('m'),
	   ('a1'),
	   ('b1'),
	   ('c1'),
	   ('d1'),
	   ('f1'),
	   ('g1'),
	   ('q1'),
	   ('w1'),
	   ('e1'),
	   ('r1'),
	   ('t1'),
	   ('y1'),
	   ('u1'),
	   ('i1'),
	   ('o1'),
	   ('p1'),
	   ('s1'),
	   ('f1'),
	   ('h1'),
	   ('j1'),
	   ('k1'),
	   ('l1'),
	   ('z1'),
	   ('x1'),
	   ('v1'),
	   ('n1'),
	   ('m1'),
	   ('a2'),
	   ('b2'),
	   ('c2'),
	   ('d2'),
	   ('f2'),
	   ('g2'),
	   ('q2'),
	   ('w2'),
	   ('e2'),
	   ('r2'),
	   ('t2'),
	   ('y2'),
	   ('y3'),
	   ('y4'),
	   ('y5'),
	   ('y6');
	  
-- создание таблицы salary2
create table salary2 (
id serial primary key,
monthly_salary int not null
);

-- заполнение monthly_salary 15 строками
insert into salary2 (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);
	  
-- создание таблицы employee_salary3 
create table employee_salary3 (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

-- заполнение employee_salary3 40 строками
insert into employee_salary3 (employee_id, salary_id)
values (1,2),
	   (2,3),
	   (3,4),
	   (4,5),
	   (5,6),
	   (6,7),
	   (7,8),
	   (8,9),
	   (9,10),
	   (10,11),
	   (11,12),
	   (12,13),
	   (13,14),
	   (14,15),
	   (15,16),
	   (16,17),
	   (17,18),
	   (18,19),
	   (19,20),
	   (20,21),
	   (21,22),
	   (22,23),
	   (23,24),
	   (24,25),
	   (25,26),
	   (26,27),
	   (27,28),
	   (28,29),
	   (29,30),
	   (30,31),
	   (31,32),
	   (32,33),
	   (33,34),
	   (34,35),
	   (35,36),
	   (36,37),
	   (37,38),
	   (38,39),
	   (39,40),
	   (40,41);
	  
-- создание таблицы roles2 (НЕ ЗАБЫВАЙ ЗАПЯТУЮ И ТОЧКУ С ЗАПЯТОЙ!!!)
create table roles3 (
id serial primary key,
role_name int not null unique
);

-- изменить тип столбца role_name на varchar (30)
alter table roles3
alter column role_name type varchar(30);

-- наполнение таблицы roles3 20 строками
insert into roles3 (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');

-- создание таблицы roles_employee13 с внешним ключом для таблицы employess2 - ID и таблицы roles3 - ID
create table roles_employee14 (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) 
	references employees2 (id),
foreign key (role_id) 
	references roles3 (id)
);

-- наполнение таблицы roles_employee14 20 строками
insert into roles_employee14 (employee_id, role_id)
values (1,2),
	   (2,3),
	   (3,4),
	   (4,5),
	   (5,6),
	   (6,7),
	   (7,8),
	   (8,9),
	   (9,10),
	   (10,11),
	   (11,12),
	   (12,13),
	   (13,14),
	   (14,15),
	   (15,16),
	   (16,17),
	   (17,18),
	   (18,19),
	   (19,20),
	   (20,02);


-- отобразить таблицу на выбор
select * from salary2;
select * from employees2;
select * from employee_salary3;
select * from roles3;
select * from roles_employee14;


-- очистить таблицу
delete from employees2;	 
delete from employee_salary3;

-- удалить строку из таблицы
delete from salary1 
where id = 1;

-- изменить значение в таблице
update salary1
set monthly_salary = 1150
where id = 2;
	   
-- добавить столбец в таблицу
alter table salary1
add column parking int;
	  
-- переименовать столбец
alter table salary1
rename parking to taxi;

-- удлить столбец из таблицы
alter table salary1 
drop column taxi;
