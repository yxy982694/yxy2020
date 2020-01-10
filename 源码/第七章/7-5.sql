--cross join
select d.dname, e.ename, d.deptno, e.deptno from dept d cross join emp e;
select count(*) from emp;
select count(*) from dept;


--natural join
--��ѯԱ�����������Լ����ڲ�������
select e.ename, e.sal, d.dname from dept d natural join emp e;

--������
--using�Ӿ�
select e.ename,e.sal, d.dname from dept d join emp e using(deptno);

--ͨ��onָ�������ӵ�����
select e.ename,e.sal, d.dname from dept d join emp e on d.deptno = e.deptno;

--�����ӵĹؼ���inner join, innerͨ��ʡ��
select e.ename,e.sal, d.dname from dept d inner join emp e on d.deptno = e.deptno;

--��������
select e.ename,e.sal, d.dname from dept d left join emp e on d.deptno = e.deptno;

--������
select e.ename,e.sal, d.dname from dept d right join emp e on d.deptno = e.deptno;

--��ȫ����
select e.ename,e.sal, d.dname from dept d full join emp e on d.deptno = e.deptno;
