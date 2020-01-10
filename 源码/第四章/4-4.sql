--数字值的情况
select * from emp where deptno=20;

--字符值
select * from emp where job='MANAGER';

--日期值
select * from emp where hiredate = '02-4月-81';

--比较运算
select * from emp where sal = 3000;

select * from emp where sal >= 3000;

select * from emp where sal < 3000;

select * from emp where sal <> 3000;
select * from emp where sal != 3000;

select * from emp where sal>1000 and sal<3000;


select * from emp where sal<1000 or sal>3000;
