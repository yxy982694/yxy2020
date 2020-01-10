--创建员工表的备份表
CREATE TABLE emp_bak 
AS 
SELECT * FROM emp;

--创建触发器来实现数据的同步备份
--当删除员工后，备份表同步删除
CREATE OR REPLACE TRIGGER syno_bak_trigger
AFTER DELETE
ON emp
FOR EACH ROW
BEGIN
  DELETE FROM emp_bak WHERE empno = :old.empno;
END;

--测试
SELECT * FROM EMP;

DELETE FROM emp WHERE empno = 7499;

select * from emp_bak;

rollback;
