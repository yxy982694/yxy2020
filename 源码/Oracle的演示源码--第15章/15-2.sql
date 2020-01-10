--�������淶
CREATE OR REPLACE PACKAGE emp_package
IS
       --���Ա����Ϣ�Ĵ洢����
       PROCEDURE add_emp_proc
       (v_empno IN emp.empno%TYPE,
        v_ename IN emp.ename%type,
        v_sal   IN emp.sal%type,
        v_deptno IN emp.deptno%type);
        
        --ɾ��Ա����Ϣ�Ĵ洢����
        PROCEDURE del_emp_proc
        (v_empno IN emp.empno%type);
END emp_package;

--��������
CREATE OR REPLACE PACKAGE BODY emp_package
IS
        --���Ա����Ϣ�Ĵ洢����
       PROCEDURE add_emp_proc
       (v_empno IN emp.empno%TYPE,
        v_ename IN emp.ename%type,
        v_sal   IN emp.sal%type,
        v_deptno IN emp.deptno%type)
        IS
                 e_2291  EXCEPTION;
                 PRAGMA EXCEPTION_INIT(e_2291,-2291);                
                 
        BEGIN
                 INSERT INTO emp(empno, ename, sal, deptno) VALUES(v_empno,v_ename,v_sal,v_deptno);
        EXCEPTION
                 WHEN DUP_VAL_ON_INDEX THEN
                   RAISE_APPLICATION_ERROR(-20001,'Ա���Ų����ظ�');
                 WHEN e_2291 THEN
                   RAISE_APPLICATION_ERROR(-20008,'���źŲ�����');
                 
        END;
        
        --ɾ��Ա����Ϣ�Ĵ洢����        
        PROCEDURE del_emp_proc
        (v_empno IN emp.empno%type)
        IS
        BEGIN
          --����Ա����ɾ��ָ����Ա����Ϣ
          DELETE FROM emp WHERE empno = v_empno;
          --�ж��Ƿ�ɾ���ɹ�
          IF SQL%NOTFOUND THEN
             RAISE_APPLICATION_ERROR(-20009,'ָ��ɾ����Ա��������');
          ELSE
             DBMS_OUTPUT.put_line('ɾ���ɹ�');
          END IF;
        END;
END emp_package;
