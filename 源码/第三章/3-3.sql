--创建表（以创建学生信息表为例）
create table student(
	sid number(8,0),
	name varchar2(20),
	sex char(2),
	birthday date,
	address varchar2(50)
);