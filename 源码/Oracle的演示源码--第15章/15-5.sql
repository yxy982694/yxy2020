--����Ա���Ż�Ա��������ȡԱ������Ϣ
--����Ա���Ż�Ա������ɾ��Ա������Ϣ
--�������淶
CREATE OR REPLACE PACKAGE overload_pkg
IS
       FUNCTION get_info(eno NUMBER) RETURN emp%ROWTYPE;
       FUNCTION get_info(name VARCHAR2) RETURN emp%ROWTYPE;
       
       PROCEDURE del_emp(eno NUMBER);
       PROCEDURE del_emp(name VARCHAR2);
END;

--��������
CREATE OR REPLACE PACKAGE BODY overload_pkg
IS
       FUNCTION get_info(eno NUMBER) RETURN emp%ROWTYPE
       IS
                emp_record  emp%ROWTYPE;
       BEGIN
                SELECT * INTO emp_record FROM emp WHERE empno = eno;
                RETURN emp_record;    
       EXCEPTION
                WHEN NO_DATA_FOUND THEN
                     RAISE_APPLICATION_ERROR(-20020,'�����ڴ�Ա����');
       END;
       
       FUNCTION get_info(name VARCHAR2) RETURN emp%ROWTYPE
       IS 
                emp_record  emp%ROWTYPE;
       BEGIN
                SELECT * INTO emp_record FROM emp WHERE ename = name;
                RETURN emp_record; 
       EXCEPTION
                WHEN NO_DATA_FOUND THEN
                     RAISE_APPLICATION_ERROR(-20020,'�����ڴ�Ա����');
       END;       
       
       PROCEDURE del_emp(eno NUMBER)
       IS
       BEGIN
                 DELETE FROM emp WHERE empno = eno;
                 IF SQL%NOTFOUND THEN
                    RAISE_APPLICATION_ERROR(-20020,'�����ڴ�Ա��');
                 END IF;
       END;
       
       PROCEDURE del_emp(name VARCHAR2)
       IS
       BEGIN
                 DELETE FROM emp WHERE ename = name;
                 IF SQL%NOTFOUND THEN
                    RAISE_APPLICATION_ERROR(-20020,'�����ڴ�Ա��');
                 END IF;
       END;
END;

--����
--����Ա���Ų�ѯԱ����Ϣ
DECLARE
       emp_record emp%rowtype;
       e_no_emp  EXCEPTION;
       PRAGMA EXCEPTION_INIT(e_no_emp,-20020);
BEGIN
       emp_record:= overload_pkg.get_info(&no);
       DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||emp_record.empno||'������'||emp_record.ename||'���ʣ�'||emp_record.sal);
EXCEPTION
       WHEN e_no_emp THEN
            DBMS_OUTPUT.put_line(SQLERRM);
END;

--����Ա��������ѯԱ����Ϣ
DECLARE
       emp_record emp%rowtype;
       e_no_emp  EXCEPTION;
       PRAGMA EXCEPTION_INIT(e_no_emp,-20020);
BEGIN
       emp_record:= overload_pkg.get_info('&name');
       DBMS_OUTPUT.PUT_LINE('Ա���ţ�'||emp_record.empno||'������'||emp_record.ename||'���ʣ�'||emp_record.sal);
EXCEPTION
       WHEN e_no_emp THEN
            DBMS_OUTPUT.put_line(SQLERRM);
END;

--����Ա����ɾ��Ա����Ϣ
DECLARE
       e_no_emp EXCEPTION;
       PRAGMA EXCEPTION_INIT(e_no_emp, -20020);
BEGIN
       overload_pkg.del_emp(&no);
       COMMIT;
EXCEPTION
       WHEN e_no_emp THEN
            DBMS_OUTPUT.put_line(SQLERRM);
       ROLLBACK;
END;  

SELECT * FROM EMP;

--����Ա��������ɾ��Ա������Ϣ
DECLARE
       e_no_emp EXCEPTION;
       PRAGMA EXCEPTION_INIT(e_no_emp, -20020);
BEGIN
       overload_pkg.del_emp('&name');
       COMMIT;
EXCEPTION
       WHEN e_no_emp THEN
            DBMS_OUTPUT.put_line(SQLERRM);
       ROLLBACK;
END;  
