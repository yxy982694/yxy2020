--insert（添加数据）
--insert into student (sid,name,sex)values(20010001,'张珊珊','女');
--insert into student(sid,name,sex,address,birthday) values(20010002,'王五'，'男','北京市昌平区',to_date('19820909','YYYYMMDD'));
--insert into student values(20010003,'张三','女',to_date('19830808','YYYYMMDD'),'北京市昌平区');

--select（查询数据）
--select * from student;
--select sid,name from student;

--update（更新数据）
select * from student;
--update student set address = '北京市昌平区' where sid = 20010001;
--update student set address='北京市海淀区';

--delete（删除数据）
--delete from student where sid = 20010001;
delete from student;

