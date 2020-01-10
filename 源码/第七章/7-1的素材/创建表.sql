----部门表
--create table 部门表(
--    deptno number primary key,
--    dname  varchar2(10)
--);
----员工表
--create table 员工表(
--    empno number primary key,
--    ename varchar2(10),
--    deptno number,
--    foreign key(deptno) references 部门表(deptno)
--);
--
----部门表中的记录
--insert into 部门表(deptno, dname) values(10,'销售部');
--insert into 部门表(deptno, dname) values(20,'人事部');
--
--
----员工表中的记录
--insert into 员工表(empno,ename,deptno) values(1,'张三',10);
--insert into 员工表(empno,ename,deptno) values(2,'李四',20);
--insert into 员工表(empno,ename,deptno) values(3,'王五',10);
--
----提交
--commit;




