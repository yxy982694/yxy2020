--����ʾ��1

SQL> CREATE OR REPLACE TRIGGER emp_trigger1
  2  BEFORE INSERT OR UPDATE OR DELETE
  3  ON emp
  4  BEGIN
  5     IF to_char(sysdate,'day') IN ('������','������')THEN
  6        RAISE_APPLICATION_ERROR(-20006,'��������Ϣ�ոı�Ա����Ϣ��');
  7     END IF;
  8  END;
  9  /
Trigger created

SQL> delete from emp where empno = 7788;
delete from emp where empno = 7788
ORA-20006: ��������Ϣ�ոı�Ա����Ϣ��
ORA-06512: �� "SCOTT.EMP_TRIGGER1", line 3
ORA-04088: ������ 'SCOTT.EMP_TRIGGER1' ִ�й����г���
