--����
--create table department(
--    depid varchar2(10) primary key,
--    depname varchar2(30)
--);

--�ӱ�
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    depid varchar2(10)    
--);

--�޸ı�ʱ���Լ��
--alter table student add constraint fk_depid foreign key(depid) references department(depid) on delete cascade;

--�����м�Լ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    depid varchar2(10) references department(depid) 
--);

--������Լ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    depid varchar2(10),
--    constraint fk_depid foreign key(depid) references department(depid) on delete cascade
--);

--����Լ��
--alter table student disable constraint fk_depid;

--����ɾ��
alter table student drop constraint fk_depid;


