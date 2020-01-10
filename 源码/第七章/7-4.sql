--自连接

--查询所有员工的姓名和直属上级的姓名
select e.ename,m.ename 
from emp e, emp m 
where e.mgr = m.empno;

--验证   ford-->jones
select * from emp;