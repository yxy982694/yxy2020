--�����洢����
CREATE OR REPLACE PROCEDURE first_proc
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('���ǹ���');
  DBMS_OUTPUT.PUT_LINE('Hello Everyone!');
END;

--��������
CREATE OR REPLACE FUNCTION first_func
RETURN VARCHAR2
IS
BEGIN
  DBMS_OUTPUT.put_line('���Ǻ���');
  RETURN 'Hello Everyone!';
END;


--���ô洢����
BEGIN
  first_proc;
END;

--���ô洢����
BEGIN
  DBMS_OUTPUT.put_line(first_func);
END;
 
