--����ʾȫ����Ա��ְλ��������ЩְλҪ���滻Ϊ������ʾ��
--
--CLERK������Ա��
--SALESMAN�����ۣ�
--MANAGER������
--ANALYST������Ա��
--PRESIDENT���ܲã�


--case���ʽ
select empno,ename,
case job
when 'CLERK' then '����Ա'
when 'SALESMAN' then '����'
when 'MANAGER' then '����'
when 'ANALYST' then '����Ա'
else '�ܲ�'
end 
from emp;


--decode����
select empno,ename,job,decode(job,'CLERK','����Ա','SALESMAN','����','MANAGER','����','ANALYST','����Ա','�ܲ�')from emp;


--case���ʽ������ֵ���ж�
select empno,ename,sal,
case when sal<2000 then '��'
when sal<5000 then '��'
else '��'
end
from emp;