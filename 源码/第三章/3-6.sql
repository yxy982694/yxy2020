--������ʱ���Ψһ��Լ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    email varchar2(50) unique,
--    cardid varchar2(18),
--    constraint uk_cardid unique(cardid)
--);

--����ѧ����Ϣ��
--create table student (
--    sid number(8,0),
--    name varchar2(20),
--    sex char(2),
--    birthday date,
--    address varchar2(50),
--    email varchar2(50) unique,
--    cardid varchar2(18)    
--);

--���ı�ṹ�����Ψһ��Լ��
--alter table student add constraint uk_student_cardid unique(cardid);

--����Լ��
alter table student disable constraint uk_student_cardid;

--����ɾ��
alter table student drop constraint uk_student_cardid;
