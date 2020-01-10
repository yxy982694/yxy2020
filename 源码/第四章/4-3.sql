--列的别名
select empno "雇员编号", ename "雇员名", sal*12 "年收入" from emp;

select empno "雇员编号", ename "雇员名", sal*12  年收入 from emp;

select empno "雇员编号", ename "雇员名", sal*12 as 年收入 from emp;

--连接符
select  ename||'的月工资是：'||sal||'岗位是：'||job as 雇员职位信息 from emp;

select ename||5 from emp;