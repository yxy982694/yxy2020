--������ͳ��Ա����������Ҫ����ʾ�����źţ��������ƣ�����

select d.deptno,d.dname,count(e.empno) from dept d, emp e where d.deptno = e.deptno group by d.deptno, d.dname;

select * from dept;

select * from emp where deptno=40;

--������
select d.deptno,d.dname,count(e.empno) from dept d, emp e where d.deptno = e.deptno(+) group by d.deptno, d.dname;