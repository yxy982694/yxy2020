--��system�û���

--ddl:create user
create user user03 identified by pass03;

--dcl: grant
grant connect, resource to user03;


/*
��С�ڵ�һ��ʹ��SQLDeveloper���߽��������û����л�����ʱ��Щͬѧ���ܻ��뵽��conn user03/pass03����������л����ӣ�
������ע�⣬connect������SQLPlus�����SQLDeveloper�����е�SQLִ�д������޷�ִ�еģ�����SQLDeveloper����û���ṩִ��SQLPlus����Ĵ��ڣ�
������������ݿ⣬��ʹ��ͼ�λ��Ĳ�����ʽ��������Ƶ�е�ͼ�λ����������ݿ�ķ�ʽ��������Ϊʲô��ͳһ�������µ�8����˵�������⡣
*/


--��user03�û���

--ddl: create table
create table test(id number, name varchar2(20));

--dml:insert
insert into test(id, name) values(1,'test01');

--tcl: commit
commit;

--dml:select
select * from test;

