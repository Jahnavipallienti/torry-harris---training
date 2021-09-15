create table regiions(region_id int unsigned not null primary key, region_name varchar(20));  
insert into regiions values(1, 'europe');
create table counttries(country_id char not null primary key, country_name varchar(20), region_id int unsigned not null);
insert into counttries values(1, 'india', 123);
create table loocations(location_id int unsigned not null auto_increment primary key, street_address varchar(20), postal_code int, city varchar(20) not null, state_province varchar(20), country_id char not null);
insert into loocations values(1, 'puttur', 517583, 'ap', 'ap', 1);
create table deepartments(dept_id int unsigned not null primary key, dept_name varchar(20) not null, manager_id int unsigned, location_id int unsigned);
insert into deepartments values(1, 'aset', 100, 108);
create table jjobs(job_id int unsigned not null primary key, job_title varchar(20) not null, min_salary decimal unsigned, max_salary decimal unsigned);
insert into jjobs values(1, 'vp', 30000, 300000);
create table emplooyeess(emp_id int unsigned not null primary key, first_name varchar(20) not null, last_name varchar(20) not null, email varchar(50) not null, phone_number int unsigned not null, hire_date date not null, job_id int unsigned not null, salary decimal not null, commission_pct decimal, manager_id int unsigned, dept_id int unsigned);
insert into emplooyeess values(1, 'jahnavi', 'pallienti', 'jahnavi.238@gmail.com', 900000, str_to_date('15-sept-2021', '%d-%M-%Y'), 123, 30000, 20, 123, 001);
create table job_hiistory(emp_id int unsigned not null, start_date date not null, end_date date not null, job_id int unsigned not null, dept_id int unsigned not null);
insert into job_hiistory values(1, str_to_date('15-sept-2021', '%d-%M-%Y'), str_to_date('20-sept-2021', '%d-%M-%Y'), 123, 456);

select* from regiions;
select* from counttries;
select* from loocations;
select* from deepartments;
select* from jjobs;
select* from job_hiistory;
select* from emplooyeess;
alter table counttries add foreign key(region_id) references regiions(region_id);
alter table loocations add foreign key(country_id) references counttries(country_id);
alter table deepartments add foreign key(location_id) references loocations(location_id);
alter table emplooyeess add foreign key(job_id) references jjobs(job_id);

alter table job_hiistory add foreign key(emp_id) references emplooyeess(emp_id);
alter table job_hiistory add foreign key(job_id) references jjobs(job_id);

alter table job_hiistory add foreign key(dept_id) references deepartments(dept_id);