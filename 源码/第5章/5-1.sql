--��Сд���ƺ���
--upper
select * from emp where job = upper('salesman');

--lower
select * from emp where lower(job) = 'clerk';

--initcap
select empno, initcap(ename) from emp;

--upper��lower��initcap�����������Ĺ�ͬ�㣬����������ֵΪnullʱ���򷵻�null
select empno, initcap(null) from emp;

--�ַ����ƺ���

--�ַ������ӷ���ʵ�ֹ�Ա���빤�����е�����
select ename || ':' || sal from emp;

--�ַ������ӵĺ���concat��ʵ�ֹ�Ա���빤�����е�����
select concat(concat(ename,':'),sal) from emp;

--�ش����� substr
select * from emp where substr(job,1,4) = 'SALE';

--���ַ������ȵĺ��� length
select * from emp where length(ename) = 6;

--instr ���Ӵ����ַ����е�λ��
select instr('hello oracle','oracle') from dual;

select instr('hello oracle hello oracle', 'oracle', 1, 2) from dual;

--����亯�� lpad
select lpad(job,9,'*') from emp;

--����亯�� rpad
select rpad(job, 9, '*') from emp;

--�滻���� replace
select replace('hello oracle','oracle','world') from dual;
