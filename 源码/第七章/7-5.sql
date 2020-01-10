--cross join
select d.dname, e.ename, d.deptno, e.deptno from dept d cross join emp e;
select count(*) from emp;
select count(*) from dept;


--natural join
--查询员工名、工资以及所在部门名称
select e.ename, e.sal, d.dname from dept d natural join emp e;

--内连接
--using子句
select e.ename,e.sal, d.dname from dept d join emp e using(deptno);

--通过on指定内连接的条件
select e.ename,e.sal, d.dname from dept d join emp e on d.deptno = e.deptno;

--内连接的关键字inner join, inner通常省略
select e.ename,e.sal, d.dname from dept d inner join emp e on d.deptno = e.deptno;

--左外连接
select e.ename,e.sal, d.dname from dept d left join emp e on d.deptno = e.deptno;

--右连接
select e.ename,e.sal, d.dname from dept d right join emp e on d.deptno = e.deptno;

--完全连接
select e.ename,e.sal, d.dname from dept d full join emp e on d.deptno = e.deptno;
