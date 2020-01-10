--����ѧ����Ϣ��
create table student(
	sid number(8,0) primary key,
	name varchar2(20),
	sex char(2),
	birthday date,
	address varchar2(50)	
);

--�޸ı�ṹ����ӷǿ�Լ��
ALTER TABLE student MODIFY (name varchar2(20) NOT NULL);

--������ʱ��ӷǿ�Լ��
create table student(
	sid number(8,0),
	name varchar2(20) not null,
	sex char(2) constraint nn_sex not null,
	birthday date,
	address varchar2(50),
	constraint sid_pk primary key(sid)
);

--ɾ���ǿ�Լ���ķ�ʽ
ALTER TABLE student MODIFY sex char(2) NULL;

--��������Լ��(��Ч��Լ��)
ALTER TABLE student DISABLE CONSTRAINT sid_pk;
--��������Լ��
ALTER TABLE student ENABLE CONSTRAINT sid_pk;

--ɾ������Լ��
ALTER TABLE student DROP CONSTRAINT sid_pk;
ALTER TABLE student DROP PRIMARY KEY;