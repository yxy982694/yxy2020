--·¶Î§²éÑ¯between..and
select empno, ename, sal from emp where sal between 1500 and 3000;

--in
select empno,ename, job from emp where job in ('SALESMAN','MANAGER','CLERK');

--Ä£ºý²éÑ¯like
select * from emp where ename like 'J%';
select * from emp where ename like '_AR%';

select * from emp;

select * from emp where ename like 'G\_%' escape '\';

--is null
select empno, ename, sal, comm from emp where comm is not null;