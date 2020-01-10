--����Ա���Ų�ѯ���ʣ��������С�ڵ���3000��������500.

--�������淶
CREATE OR REPLACE PACKAGE emp_sal_pkg
IS
       FUNCTION get_sal(eno NUMBER)RETURN NUMBER;
       
       PROCEDURE upd_sal(eno NUMBER, salary NUMBER);
END emp_sal_pkg;

--����
CREATE OR REPLACE PACKAGE BODY emp_sal_pkg
IS
	   --����Ա���Ų�ѯԱ���Ĺ���
       FUNCTION get_sal(eno NUMBER)RETURN NUMBER
       IS
                v_sal emp.sal%TYPE:= 0;
       BEGIN
                SELECT sal INTO v_sal FROM emp WHERE empno = eno;
                RETURN v_sal;
       EXCEPTION
                WHEN NO_DATA_FOUND THEN
                     RAISE_APPLICATION_ERROR(-20008,'��Ա���Ų����ڣ�');
       END;
       
	   --��������������Ա���Ĺ���
       PROCEDURE upd_sal(eno NUMBER, salary NUMBER)
       IS
       BEGIN
                IF salary<=3000 THEN
                    UPDATE emp SET sal = sal + 500 WHERE empno = eno;
                END IF;
       END;
END  emp_sal_pkg;
