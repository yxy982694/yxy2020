--����ʾ��2

--������Ʊ�
CREATE TABLE delete_emp_audit(
       name VARCHAR2(10),
       delete_time DATE
);

--����������
CREATE OR REPLACE TRIGGER del_emp_trigger
AFTER DELETE ON emp
FOR EACH ROW
BEGIN
  INSERT INTO delete_emp_audit VALUES(:old.ename,SYSDATE);
END;

--����
DELETE FROM emp WHERE empno = 7499;

select * from delete_emp_audit;

--����ʾ��3
SQL> CREATE OR REPLACE TRIGGER tr_check_sal
  2  BEFORE UPDATE OF sal ON emp
  3  FOR EACH ROW
  4  WHEN (new.sal<old.sal OR new.sal>old.sal*1.5)
  5  BEGIN
  6       RAISE_APPLICATION_ERROR(-20028,'����ֻ�������������������ܳ���50%');
  7  END;
  8  /
Trigger created

SQL> UPDATE emp SET sal = sal*1.8 WHERE empno = 7788;
UPDATE emp SET sal = sal*1.8 WHERE empno = 7788
ORA-20028: ����ֻ�������������������ܳ���50%
ORA-06512: �� "SCOTT.TR_CHECK_SAL", line 2
ORA-04088: ������ 'SCOTT.TR_CHECK_SAL' ִ�й����г���


--����ʾ��4
CREATE OR REPLACE TRIGGER upd_cascade_trigger
AFTER UPDATE OF deptno
ON dept
FOR EACH ROW
BEGIN
  UPDATE emp SET deptno = :new.deptno WHERE deptno = :old.deptno;
END;

--����
UPDATE dept SET deptno = 50 WHERE deptno = 10;

select deptno,ename from emp where deptno = 50;