--��ͼ�ϵ�DML����

--������ͼ
create view empnew_view
as
select empno,ename,sal from empnew;

--select
select * from empnew_view;

--insert
insert into empnew_view(empno,ename,sal) values(8888,'LAYNA',6666);
select * from empnew;

--update
update empnew_view set sal = sal + 100 where empno = 8888;

--delete
delete from empnew_view where empno = 8888;
commit;

--����ͼ�϶���checkԼ��
create view empnew_view2
as
select * from empnew where deptno = 20
with check option constraint ck_view;

--��ѯ��ͼ
select * from empnew_view2;

--����
--insert��update
update empnew_view2 set deptno = 30 where empno = 7566;

--�޸���ͼ

--�޸�ǰ��ѯ
select * from empnew_view;

--�޸�empnew_view��ͼ
create or replace view empnew_view
as
select * from emp where job = 'SALESMAN';

--�޸ĺ��ѯ
select * from empnew_view;

--ɾ����ͼ
drop view empnew_view;

select * from emp;
