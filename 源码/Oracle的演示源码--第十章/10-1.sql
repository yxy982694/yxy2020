--��������
create sequence deptno_seq
start with 50
increment by 10
maxvalue 70
cache 3;

--Ϊ�˷�����ʾ��������һ����dept��ṹ��ͬ��deptnew��
create table deptnew
as
select * from dept;

--����в������ݣ���ͨ�����и�������deptno�ṩ����
insert into deptnew(deptno,dname,loc)values(deptno_seq.nextval,'test_dname','test_loc');
select * from deptnew;

--currval
select deptno_seq.currval from dual;

--��ѯ����
select sequence_name, min_value, max_value, increment_by, cycle_flag, cache_size, last_number
from user_sequences;

--�����ݿ��ύ���������
commit;

--�޸�����
alter sequence deptno_seq
maxvalue 90;

--����
insert into deptnew(deptno,dname,loc)values(deptno_seq.nextval,'test_dname','test_loc');
select * from deptnew;
rollback;
insert into deptnew(deptno,dname,loc)values(deptno_seq.nextval,'test_dname','test_loc');
select * from deptnew;
commit;

--ɾ������
drop sequence deptno_seq;