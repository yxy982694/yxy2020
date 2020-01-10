--去除重复行
--select distinct deptno, job from emp;

select * from emp;

--设置简体中文的日期格式
alter session set nls_language = 'SIMPLIFIED CHINESE';
select empno,ename,hiredate from emp;

--设置美国英语的日期格式
alter session set nls_language = 'AMERICAN';
select empno,ename,hiredate from emp;

--设置特定格式
alter session set nls_date_format='YYYY/MM/DD';
select empno,ename,hiredate from emp;