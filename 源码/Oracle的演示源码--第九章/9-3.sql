--����������ͼ
create view job_view(job, avgsal, sumsal, maxsal, minsal)
as
select job,avg(sal),sum(sal),max(sal),min(sal) from emp group by job;

--�鿴������ͼ
select * from job_view;

--ͨ��with read only�Ӿ�Ϊ������ͼ����DML����
create view job_view
as
select job,avg(sal) avgsal,sum(sal) sumsal,max(sal) maxsal,min(sal) minsal from emp group by job
with read only;