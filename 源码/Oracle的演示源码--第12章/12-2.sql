--��ѯ����Ա����Ա���š�������ְλ����Ϣ��
DECLARE
  --�����α�
  CURSOR emp_cursor IS SELECT empno,ename,job FROM emp;
  v_empno emp.empno%TYPE;
  v_ename emp.ename%TYPE;
  v_job   emp.job%TYPE;
BEGIN
  --���αִ꣬�в�ѯ
  OPEN emp_cursor;
  --��ȡ����  
  LOOP
       FETCH emp_cursor INTO v_empno,v_ename,v_job;
       DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||v_empno||'��������'||v_ename||',ְλ��'||v_job);
       --ʲôʱ���ܹ��˳�ѭ����
       --%FOUND,%NOTFOUND
       --EXIT WHEN emp_cursor%NOTFOUND;
       --EXIT WHEN NOT emp_cursor%FOUND;
       EXIT WHEN emp_cursor%ROWCOUNT=5;
  END LOOP;
  --�ر��α�
  CLOSE emp_cursor;
END;
 
--��ѯ����Ա����Ա���š�������ְλ����Ϣ��
DECLARE
  --�����α�
  CURSOR emp_cursor IS SELECT empno,ename,job FROM emp;
  v_empno emp.empno%TYPE;
  v_ename emp.ename%TYPE;
  v_job   emp.job%TYPE;
BEGIN
  --���αִ꣬�в�ѯ
  --OPEN emp_cursor;
  --����α��Ƿ��
  IF emp_cursor%ISOPEN THEN
    DBMS_OUTPUT.PUT_LINE('�α��Ѿ���');
  ELSE
    DBMS_OUTPUT.PUT_LINE('�α�û�д�');
  END IF;

END;


--��ְ����ְ���ǹ��ʣ��ܲ���1000Ԫ��������500Ԫ������Ա����300Ԫ��
DECLARE
  --�����α�
  CURSOR empnew_cursor IS SELECT empno,job FROM empnew;
  v_empno empnew.empno%TYPE;
  v_job   empnew.job%TYPE;
BEGIN
  --���α�
  OPEN empnew_cursor;
  --��ȡ����
  LOOP
    FETCH empnew_cursor INTO v_empno,v_job;
    IF v_job='PRESIDENT' THEN
      UPDATE empnew SET sal = sal + 1000 WHERE empno = v_empno;
    ELSIF v_job='MANAGER' THEN
      UPDATE empnew SET sal = sal + 500 WHERE empno = v_empno;
    ELSE
      UPDATE empnew SET sal = sal + 300 WHERE empno = v_empno;
    END IF;
    EXIT WHEN empnew_cursor%NOTFOUND;
  END LOOP;
  COMMIT;
  --�ر��α�
  CLOSE empnew_cursor;
END;

SELECT * FROM empnew;






  















 
