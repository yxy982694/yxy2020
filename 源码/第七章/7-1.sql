--笛卡尔集

select empno,ename, 员工表.deptno, 部门表.deptno, dname 

from 部门表, 员工表;


--添加合适的条件，可以避免笛卡尔集，从而得到正确的多表查询记录

select empno,ename, 员工表.deptno, 部门表.deptno, dname 

from 部门表, 员工表 

where 部门表.deptno = 员工表.deptno;