--��ѯԱ����Ϣ��Ҫ����ʾ��Ա���ţ�������ְλ����������

--��ֵ����
select empno,ename,job,dname from emp, dept where emp.deptno = dept.deptno;

--��������ĵ�ֵ���ӣ�ʹ��AND������
select e.empno,e.ename,e.job,d.dname,d.deptno from emp e, dept d  where e.deptno = d.deptno and e.deptno=10;


--��ʾ����Ա����Ա���š����������ʼ��乤�ʵĵȼ���

select * from salgrade;

--�ǵ�ֵ����
select e.empno, e.ename, e.sal, s.grade from emp e, salgrade s where e.sal between losal and hisal;

