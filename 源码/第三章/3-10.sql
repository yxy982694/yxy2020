--insert��������ݣ�
--insert into student (sid,name,sex)values(20010001,'��ɺɺ','Ů');
--insert into student(sid,name,sex,address,birthday) values(20010002,'����'��'��','�����в�ƽ��',to_date('19820909','YYYYMMDD'));
--insert into student values(20010003,'����','Ů',to_date('19830808','YYYYMMDD'),'�����в�ƽ��');

--select����ѯ���ݣ�
--select * from student;
--select sid,name from student;

--update���������ݣ�
select * from student;
--update student set address = '�����в�ƽ��' where sid = 20010001;
--update student set address='�����к�����';

--delete��ɾ�����ݣ�
--delete from student where sid = 20010001;
delete from student;

