--��������ͼ
--�������ڲ�ѯԱ���š����������ʵ���ͼ��
create view emp_view
as
select empno,ename,sal from emp;


--��ѯ��ͼ
select * from emp_view;

--������ͼʱָ����ͼ���еı���
create view emp_view2(Ա����,����,����)
as
select empno,ename,sal from emp;

--��ѯ��ͼ
select * from emp_view2;

--������ͼ
--�������ڻ�ò��ź�Ϊ10�Ĳ��źš��������Ƽ�Ա����Ϣ��
create view dept_emp_view
as
select d.deptno,d.dname,e.empno,e.ename,e.job
from dept d, emp e
where d.deptno = e.deptno and d.deptno = 10;

--��ѯ��ͼ
select * from dept_emp_view;

--ֻ����ͼ
--�����鿴10�Ų���Ա����Ϣ����ͼ��
create view emp_view3
as
select * from emp where deptno = 10
with read only;

--��ѯ��ͼ
select * from emp_view3;
--����
update emp_view3 set sal = sal +50;



