--select * from emp;
-- 算术运算符的演示
--select empno,ename,sal,sal*12 from emp;
--
--select empno, ename, sal*12+sal/2 from emp;
--
--select empno, ename, 200+sal*12  from emp;
--
--select empno, ename, (sal+100)*12  from emp;
--
--select empno, ename, sal, comm, sal+comm from emp;

--默认值的演示
--create table student(
--    sid number(8,0) primary key,
--    name varchar2(10),
--    sex char(2) default '男',
--    age number(2,0) default 20,
--    address varchar2(50)
--);


--insert into student(sid,name) values (20010001,'张三');
select * from student;

insert into student values(20010002,'王五',default,21,'北京市昌平区');
commit;

