--四舍五入的函数 round

--求员工的日工资
select round(sal/30,2) from emp;


--截断函数 trunc
select round(sal/30,2),trunc(sal/30,2) from emp;


--求余数的函数 Mod

--求员工号为偶数的员工信息
select * from emp where mod(empno,2)=0;
