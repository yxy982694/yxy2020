--����ѧ����Ϣ��
create table student(
	sid number(8,0),
	name varchar2(20),
	sex char(2),
	birthday date,
	address varchar2(50)
);

--�޸ı�ṹ��Ϊѧ����Ϣ���������Լ��
alter table student
add constraint sid_pk primary key(sid);


--������ʱ�������Լ��
create table student(
	sid number(8,0) primary key,
	name varchar2(20),
	sex char(2),
	birthday date,
	address varchar2(50)	
);

create table student(
	sid number(8,0),
	name varchar2(20),
	sex char(2),
	birthday date,
	address varchar2(50),
        constraint sid_pk primary key(sid)
);


