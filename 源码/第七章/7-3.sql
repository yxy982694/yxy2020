--按部门统计员工的人数，要求显示：部门号，部门名称，人数

select d.deptno,d.dname,count(e.empno) from dept d, emp e where d.deptno = e.deptno group by d.deptno, d.dname;

select * from dept;

select * from emp where deptno=40;

--外连接
select d.deptno,d.dname,count(e.empno) from dept d, emp e where d.deptno = e.deptno(+) group by d.deptno, d.dname;