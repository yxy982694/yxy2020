--��ƽ��ֵavg
select avg(sal) from emp;

--���sum
select sum(sal) from emp;

--�����ֵmax
select max(sal) from emp;

--����Сֵmin
select min(sal) from emp;

--��������count
select count(*) from emp;
select count(empno) from emp;

--ͳ��һ�²��ŵĸ���
select count(deptno) from emp;
--�ڷ��麯����ͨ��distinct�ؼ�����ȥ���ظ��ļ�¼
select count(distinct deptno) from emp;

--��ת��wm_concat
select wm_concat(ename) from emp;

--��Ա����ƽ������
select sum(sal)/count(*) ����һ, sum(sal)/count(sal) ������, avg(sal) ������ from emp;
--��Ա����ƽ������
select sum(comm)/count(*) ����һ, sum(comm)/count(comm) ������, avg(comm) ������ from emp;

select count(*),count(nvl(comm,0)) from emp;

select comm from emp;
--�����Կ�ֵ
select avg(nvl(comm,0)) from emp;
--���Կ�ֵ
select avg(comm) from emp;


