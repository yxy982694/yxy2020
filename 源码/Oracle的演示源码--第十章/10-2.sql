--������������
create index idx_ename on emp(ename);

--������������
create index idx_deptno_job on emp(deptno,job);

--����Ψһ����
create unique index idx_dname on dept(dname);

--������Ψһ����
create index idx_job on emp(job);

--��ѯ����
select uic.index_name, uic.column_name, uic.column_position, ui.uniqueness
from user_indexes ui, user_ind_columns uic
where uic.index_name = ui.index_name and ui.table_name='EMP';

--ɾ������
drop index idx_dname;
