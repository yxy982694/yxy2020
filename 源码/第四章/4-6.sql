--and
select empno, ename, job, deptno from emp where job='MANAGER' and deptno=10;

--or
select empno, ename, job, sal from emp where job='MANAGER' or sal>2000;

--not
select empno, ename,job from emp where job not in ('CLERK','SALESMAN','MANAGER');

--»ìºÏ
select empno,ename, job, sal from emp where (sal>2000 or deptno=30) and job not in ('PRESIDENT','MANAGER');