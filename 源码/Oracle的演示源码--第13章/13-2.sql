--Ԥ�����쳣����
DECLARE
  v_name emp.ename%TYPE;
  v_sal  emp.sal%TYPE:=&salary;
BEGIN
  SELECT ename INTO v_name FROM emp WHERE sal = v_sal;
  DBMS_OUTPUT.put_line(v_name||'�Ĺ����ǣ�'||v_sal);
EXCEPTION         
  WHEN NO_DATA_FOUND THEN
     DBMS_OUTPUT.put_line('û�иù��ʵ�Ա��');
  WHEN TOO_MANY_ROWS THEN
     DBMS_OUTPUT.put_line('���Ա�����иù���');
  WHEN OTHERS THEN
     DBMS_OUTPUT.put_line('�����쳣');
END;

SELECT * FROM EMP;
--800�� һ��Ա��
--1250   ���Ա��
--8000    0��Ա��

      
