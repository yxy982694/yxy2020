--1:����������������Ĵ洢����
--���ݲ��ű�ŷ��ظò��ŵ��ܹ���
CREATE OR REPLACE FUNCTION func1
(v_deptno IN NUMBER)
RETURN NUMBER
IS
       v_sumsal NUMBER;
BEGIN
       SELECT SUM(SAL) INTO v_sumsal FROM emp WHERE deptno = v_deptno;
       RETURN v_sumsal;
EXCEPTION
       WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('û�д˲��ţ�');
       WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

--2:����������������Ĵ洢����
--����Ա�������Ա����������Ա���Ĺ��ʣ����ҷ���Ա����������
CREATE OR REPLACE FUNCTION func2
(v_empno IN emp.empno%TYPE, v_name OUT emp.ename%TYPE, v_sal OUT emp.sal%TYPE)
RETURN NUMBER
IS
       v_salsum NUMBER;
BEGIN
       SELECT ename,sal,(sal+nvl(comm,0))*12
       INTO v_name,v_sal,v_salsum
       FROM emp
       WHERE empno = v_empno;
       RETURN v_salsum;
EXCEPTION
       WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.put_line('û�д�Ա����');
       WHEN OTHERS THEN
            DBMS_OUTPUT.put_line(SQLERRM);
END;


--3����������������������Ĵ洢����
--����������ƽ���ͣ��������������ƽ��

CREATE OR REPLACE FUNCTION func3
(n1 IN OUT NUMBER, n2 IN OUT NUMBER)
RETURN NUMBER
AS
BEGIN
  n1 := n1*n1;
  n2 := n2*n2;
  RETURN n1+n2;
END;













