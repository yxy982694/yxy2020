--����Ա����ı��ݱ�
CREATE TABLE emp_bak 
AS 
SELECT * FROM emp;

--������������ʵ�����ݵ�ͬ������
--��ɾ��Ա���󣬱��ݱ�ͬ��ɾ��
CREATE OR REPLACE TRIGGER syno_bak_trigger
AFTER DELETE
ON emp
FOR EACH ROW
BEGIN
  DELETE FROM emp_bak WHERE empno = :old.empno;
END;

--����
SELECT * FROM EMP;

DELETE FROM emp WHERE empno = 7499;

select * from emp_bak;

rollback;
