--��ʽ��������ת���ľ���
select * from emp where sal>'2000';
select * from emp where hiredate='02-4��-81';

--to_char ��������ת�����ַ�����
select to_char(hiredate,'YYYY-MM-DD') from emp;
select to_char(hiredate,'YYYY"��"MM"��"DD"��"') from emp;
select to_char(hiredate,'DD-MON-RR','NLS_DATE_LANGUAGE=AMERICAN') from emp;

--to_char ��ֵ����ת�����ַ�����
select sal,to_char(sal,'L0,000,000.00')from emp;
select sal,to_char(sal,'L9,999,999.99')from emp;
select sal,to_char(sal,'$9,999,999.99')from emp;

--to_date  �ַ�����ת������������
select ename,hiredate from emp where hiredate>to_date('1981-12-31','YYYY-MM-DD');

--to_number  �ַ�����ת������ֵ����
select ename,sal from emp where sal>to_number('��2000','L99999');