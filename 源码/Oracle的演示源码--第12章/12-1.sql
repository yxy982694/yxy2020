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
       EXIT WHEN emp_cursor%NOTFOUND;       
  END LOOP;
  --�ر��α�
  CLOSE emp_cursor;
END;









 
