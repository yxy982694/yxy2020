--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50)    
--);

--�޸ı���Ӽ��Լ���ķ�ʽ
--alter table student add constraint ck_sex check(sex='��' or sex='Ů');

--������ʱ���ü��Լ���ķ�ʽ���м�Լ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2) check(sex='��' or sex='Ů'),
--    birthday date,
--    address varchar2(50)    
--);

--������ʱ���ü��Լ���ķ�ʽ����Լ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    constraint ck_sex check(sex='��' or sex='Ů')    
--);

--����Լ��
--alter table student disable constraint ck_sex;

--����ɾ��
alter table student drop constraint ck_sex;

