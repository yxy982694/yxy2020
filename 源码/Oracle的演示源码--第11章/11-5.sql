--�����ͱ���
DECLARE
    v_name  emp.ename%TYPE;
    v_sal   emp.sal%TYPE;
BEGIN
    SELECT ename,sal
    INTO   v_name,v_sal
    FROM   emp
    WHERE  empno = 7788;
    --��ӡ���
    DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal);
END;

--��¼�ͱ���
DECLARE
    emp_record   emp%ROWTYPE;
BEGIN
    SELECT *  INTO emp_record FROM emp WHERE empno = 7788;
    --��ӡ���
    DBMS_OUTPUT.PUT_LINE(emp_record.ename||'�Ĺ����ǣ�'||emp_record.sal);
END;
