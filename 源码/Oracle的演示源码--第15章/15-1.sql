--�������淶
CREATE OR REPLACE PACKAGE first_package
IS
       v_no emp.deptno%TYPE:=10;
       --����
       PROCEDURE query_emp(v_deptno IN NUMBER DEFAULT v_no,v_avgsal OUT NUMBER, v_cnt OUT NUMBER);
END first_package;

--��������
CREATE OR REPLACE PACKAGE BODY first_package
IS
       PROCEDURE query_emp(v_deptno IN NUMBER DEFAULT v_no,v_avgsal OUT NUMBER, v_cnt OUT NUMBER)
       IS
       BEGIN
            SELECT avg(sal), count(*)
            INTO v_avgsal, v_cnt
            FROM emp
            WHERE deptno = v_deptno;
       EXCEPTION
            WHEN NO_DATA_FOUND THEN
                 DBMS_OUTPUT.put_line('û�д˲��ţ�');
            WHEN OTHERS THEN
                 DBMS_OUTPUT.put_line(SQLERRM);
       END;
END first_package;

--����
DECLARE
    v_avgsal NUMBER;
    v_cnt    NUMBER;
BEGIN
    first_package.query_emp(20,v_avgsal,v_cnt);
	--v_deptno����Ĭ��ֵʱ����Ҫʹ�����ƴ������ִ�ֵ��ʽ
	--first_package.query_emp(v_avgsal => v_avgsal,v_cnt => v_cnt);
    DBMS_OUTPUT.put_line('ƽ�����ʣ�'||v_avgsal);
    DBMS_OUTPUT.put_line('��������'||v_cnt);
END;
