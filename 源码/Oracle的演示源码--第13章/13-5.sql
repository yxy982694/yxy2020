--�쳣������SQLCODE��SQLERRM��ʹ��
DECLARE
  v_empno emp.empno%TYPE:= &empno;
  v_ename emp.ename%TYPE:= '&ename';
  v_deptno emp.deptno%TYPE:= &deptno;
BEGIN
  INSERT INTO emp(empno,ename,deptno)VALUES(v_empno,v_ename,v_deptno);
  IF SQL%FOUND THEN
    DBMS_OUTPUT.put_line('���ݲ���ɹ���');
    COMMIT;
  END IF;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line('����ţ�'||SQLCODE);
    DBMS_OUTPUT.put_line('������Ϣ��'||SQLERRM);
END;   
