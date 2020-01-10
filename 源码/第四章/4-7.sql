--单列排序
select ename, comm from emp order by comm asc;

--使用列的别名排序
select  empno, ename, sal*12 年收入 from emp order by 年收入 desc;

--多列排序
select empno,ename, deptno, sal from emp order by deptno asc, sal desc;
