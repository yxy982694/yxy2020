SQL> --�����Ƕ�empnewִ��ɾ������֮�����ͻ����һ����ʾ��Ϣ����ʾ������ɾ��������
SQL> CREATE TRIGGER first_trigger
  2  AFTER DELETE
  3  ON empnew
  4  BEGIN
  5     DBMS_OUTPUT.put_line('����ɾ���Ĳ�����');
  6  END;
  7  /
Trigger created

SQL> SET SERVEROUTPUT ON
SQL> DELETE FROM empnew WHERE empno = 7788;
����ɾ���Ĳ�����
1 row deleted
