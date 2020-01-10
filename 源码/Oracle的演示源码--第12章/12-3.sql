--���󣺲�ѯԱ����Ա���š�������ְλ
--��ʾ�α�ĳ��淽ʽ
DECLARE
  CURSOR emp_cursor IS SELECT empno,ename,job FROM emp;
  v_empno emp.empno%TYPE;
  v_name  emp.ename%TYPE;
  v_job   emp.job%TYPE;
BEGIN
  OPEN emp_cursor;
  LOOP
    FETCH emp_cursor INTO v_empno,v_name,v_job;
    EXIT WHEN emp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||v_empno ||'������'||v_name||'ְλ��'||v_job);
  END LOOP;
  CLOSE emp_cursor;
END;

--�α�FORѭ��
DECLARE
  CURSOR emp_cursor IS SELECT empno,ename,job FROM emp;
BEGIN
  FOR emp_record IN emp_cursor LOOP
    DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||emp_record.empno||',������'||emp_record.ename||',ְλ��'||emp_record.job);
  END LOOP;
END;
 
--�α�FORѭ���������Ӳ�ѯ
BEGIN
  FOR emp_record IN (SELECT empno,ename,job FROM emp) LOOP
    DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||emp_record.empno||',������'||emp_record.ename||',ְλ��'||emp_record.job);
  END LOOP;
END;

--�����α�
DECLARE
  CURSOR emp_cursor(dno NUMBER) IS SELECT empno,ename,job FROM emp WHERE deptno = dno;
BEGIN
  FOR emp_record IN emp_cursor(&no) LOOP
    DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||emp_record.empno||',������'||emp_record.ename||',ְλ��'||emp_record.job);
  END LOOP;
END;























  
