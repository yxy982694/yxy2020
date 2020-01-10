--求出每个部门的平均工资，要求显示：部门号，部门的平均工资
select deptno,avg(sal) from emp group by deptno;

--多列分组
--按不同的部门，不同的职位，计算员工的平均工资
select deptno,job,avg(sal) from emp group by deptno,job order by deptno;

--求出每个部门的平均工资，要求显示：每个部门的平均工资。
select avg(sal)from emp group by deptno;

--求出每个部门的员工姓名，要求显示：部门编号、员工姓名
select deptno,wm_concat(ename)from emp group by deptno;