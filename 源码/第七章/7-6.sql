--emp01
create table emp01
as
select * from emp where deptno in(10,20);

--emp02
create table emp02
as
select * from emp where deptno in(20,30);

--合并显示emp01表和emp02表所有雇员的部门编号、员工号、员工姓名。
--10号部门有3个、20号部门有5个、
select * from emp01;
--30号部门有6个、
select * from emp02;

--union  14个记录
select deptno, empno, ename from emp01
union
select deptno, empno, ename from emp02;

--union all
--通过部门号进行排序
select deptno, empno, ename from emp01
union all
select deptno, empno, ename from emp02
order by deptno;

--通过列值进行排序，1代表第一列
select deptno, empno, ename from emp01
union all
select deptno, empno, ename from emp02
order by 1;

--intersect
select deptno, empno, ename from emp01
intersect
select deptno, empno, ename from emp02;

--minus
select deptno, empno, ename from emp01
minus
select deptno, empno, ename from emp02;






