--emp01
create table emp01
as
select * from emp where deptno in(10,20);

--emp02
create table emp02
as
select * from emp where deptno in(20,30);

--�ϲ���ʾemp01���emp02�����й�Ա�Ĳ��ű�š�Ա���š�Ա��������
--10�Ų�����3����20�Ų�����5����
select * from emp01;
--30�Ų�����6����
select * from emp02;

--union  14����¼
select deptno, empno, ename from emp01
union
select deptno, empno, ename from emp02;

--union all
--ͨ�����źŽ�������
select deptno, empno, ename from emp01
union all
select deptno, empno, ename from emp02
order by deptno;

--ͨ����ֵ��������1�����һ��
select deptno, empno, ename from emp01
union all
select deptno, empno, ename from emp02
order by 1;

--intersect
select deptno, empno, ename from emp01
intersect
select deptno, empno, ename from emp02;

--minus
select deptno, empno, ename from emp01
minus
select deptno, empno, ename from emp02;






