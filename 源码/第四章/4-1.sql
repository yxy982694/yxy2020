--ȥ���ظ���
--select distinct deptno, job from emp;

select * from emp;

--���ü������ĵ����ڸ�ʽ
alter session set nls_language = 'SIMPLIFIED CHINESE';
select empno,ename,hiredate from emp;

--��������Ӣ������ڸ�ʽ
alter session set nls_language = 'AMERICAN';
select empno,ename,hiredate from emp;

--�����ض���ʽ
alter session set nls_date_format='YYYY/MM/DD';
select empno,ename,hiredate from emp;