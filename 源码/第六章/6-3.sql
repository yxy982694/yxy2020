--求平均工资大于2500的部门，要求显示：部门号，平均工资

--select deptno,avg(sal) from emp where avg(sal)>2500 group by deptno;

--如果条件中包含分组函数，需要通过having子句对分组结果进行过滤
select deptno,avg(sal) from emp group by deptno having avg(sal)>2500;

--在条件中如果没有分组函数，推荐使用where子句，可以先过滤后分组来提高效率
select deptno,avg(sal) from emp where deptno=10 group by deptno;

--求部门平均工资的最大值
--嵌套分组函数要与group by子句一起使用
select max(avg(sal)) from emp group by deptno;