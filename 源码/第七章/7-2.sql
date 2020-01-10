--查询员工信息，要求显示：员工号，姓名，职位，部门名称

--等值连接
select empno,ename,job,dname from emp, dept where emp.deptno = dept.deptno;

--多个条件的等值连接，使用AND操作符
select e.empno,e.ename,e.job,d.dname,d.deptno from emp e, dept d  where e.deptno = d.deptno and e.deptno=10;


--显示所有员工的员工号、姓名、工资及其工资的等级。

select * from salgrade;

--非等值连接
select e.empno, e.ename, e.sal, s.grade from emp e, salgrade s where e.sal between losal and hisal;

