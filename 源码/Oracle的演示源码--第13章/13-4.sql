--�Զ����쳣
DECLARE
  v_empno emp.empno%TYPE:=&empno;
  --1�������쳣
  e_no_result EXCEPTION;
BEGIN
  UPDATE emp SET sal = sal + 100 WHERE empno = v_empno;
  IF SQL%NOTFOUND THEN
	--2��ָ�������쳣��ʱ��
    RAISE e_no_result;
  ELSE
    COMMIT;
  END IF;
EXCEPTION
    --3����׽�������쳣
  WHEN e_no_result THEN
    DBMS_OUTPUT.put_line('���ݸ���ʧ�ܣ�');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('��������');
END;
      
  
