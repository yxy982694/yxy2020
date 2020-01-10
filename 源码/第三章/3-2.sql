--在system用户下

--ddl:create user
create user user03 identified by pass03;

--dcl: grant
grant connect, resource to user03;


/*
本小节第一次使用SQLDeveloper工具进行两个用户的切换，此时有些同学可能会想到用conn user03/pass03这个命令来切换连接，
在这里注意，connect命令是SQLPlus命令，在SQLDeveloper工具中的SQL执行窗口是无法执行的，并且SQLDeveloper工具没有提供执行SQLPlus命令的窗口，
如果想连接数据库，请使用图形化的操作方式（参照视频中的图形化的连接数据库的方式）。至于为什么，统一到第四章第8节来说明此问题。
*/


--在user03用户下

--ddl: create table
create table test(id number, name varchar2(20));

--dml:insert
insert into test(id, name) values(1,'test01');

--tcl: commit
commit;

--dml:select
select * from test;

