DECLARE
      v_name  emp.ename%TYPE;
      v_sal   emp.sal%TYPE;
BEGIN
      SELECT ename,sal
      INTO   v_name,v_sal
      FROM   emp
      WHERE  empno = &no;
      IF   v_sal <3000 THEN
           DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal);
      END IF;
END;

select * from emp;
--7369 <3000
--7839 >3000

--Oracle���쳣����
DECLARE
      v_name  emp.ename%TYPE;
      v_sal   emp.sal%TYPE;
BEGIN
      SELECT ename,sal
      INTO   v_name,v_sal
      FROM   emp
      WHERE  empno = &no;
      IF   v_sal <3000 THEN
           DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal);
      END IF;
EXCEPTION
        WHEN NO_DATA_FOUND THEN
          DBMS_OUTPUT.PUT_LINE('Ա�����������');
        WHEN OTHERS THEN
          DBMS_OUTPUT.PUT_LINE('��������');
END;
