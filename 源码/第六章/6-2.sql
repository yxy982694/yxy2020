--���ÿ�����ŵ�ƽ�����ʣ�Ҫ����ʾ�����źţ����ŵ�ƽ������
select deptno,avg(sal) from emp group by deptno;

--���з���
--����ͬ�Ĳ��ţ���ͬ��ְλ������Ա����ƽ������
select deptno,job,avg(sal) from emp group by deptno,job order by deptno;

--���ÿ�����ŵ�ƽ�����ʣ�Ҫ����ʾ��ÿ�����ŵ�ƽ�����ʡ�
select avg(sal)from emp group by deptno;

--���ÿ�����ŵ�Ա��������Ҫ����ʾ�����ű�š�Ա������
select deptno,wm_concat(ename)from emp group by deptno;