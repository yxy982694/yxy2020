--��ƽ�����ʴ���2500�Ĳ��ţ�Ҫ����ʾ�����źţ�ƽ������

--select deptno,avg(sal) from emp where avg(sal)>2500 group by deptno;

--��������а������麯������Ҫͨ��having�Ӿ�Է��������й���
select deptno,avg(sal) from emp group by deptno having avg(sal)>2500;

--�����������û�з��麯�����Ƽ�ʹ��where�Ӿ䣬�����ȹ��˺���������Ч��
select deptno,avg(sal) from emp where deptno=10 group by deptno;

--����ƽ�����ʵ����ֵ
--Ƕ�׷��麯��Ҫ��group by�Ӿ�һ��ʹ��
select max(avg(sal)) from emp group by deptno;