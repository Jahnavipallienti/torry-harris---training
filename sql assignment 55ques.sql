create table students(regd_num int, name varchar(10), branch varchar(10));
insert into students values(0004, 'deepak', 'etc');
select* from students;
select count(*) from students;
alter table students add address varchar(50);
DESC students;
select regd_num from students where name='pradeep';
select name, branch from students;


create table emmployee(empno int, ename varchar(20), job varchar(20), hiredate date, mgr int, sal int, comm int, deptno int);
insert into emmployee values(7934, 'miller', 'clerk', str_to_date('23-jan-82', '%d-%M-%Y'), 7782, 1300, null, 10);
select* from emmployee;
select* from emmployee where deptno = 30;
select* from emmployee where job like 'clerk';
select* from emmployee where deptno>20;
select empno, ename from emmployee where deptno>20;
select ename from emmployee where comm>sal;
select ename from emmployee where comm>(60 % sal);
select ename, job, sal from emmployee deptno20 where sal>2000;
select ename, job= 'manager' or 'president' from emmployee;
select ename, job='manager' from emmployee wherenot deptno='30';