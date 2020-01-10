--1:创建带有输入参数的存储函数
--根据部门编号返回该部门的总工资
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
            DBMS_OUTPUT.PUT_LINE('没有此部门！');
       WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;

--2:创建带有输出参数的存储函数
--根据员工号输出员工的姓名和员工的工资，并且返回员工的年收入
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
            DBMS_OUTPUT.put_line('没有此员工！');
       WHEN OTHERS THEN
            DBMS_OUTPUT.put_line(SQLERRM);
END;


--3：创建带有输入输出参数的存储函数
--求两个数的平方和，并输出两个数的平方

CREATE OR REPLACE FUNCTION func3
(n1 IN OUT NUMBER, n2 IN OUT NUMBER)
RETURN NUMBER
AS
BEGIN
  n1 := n1*n1;
  n2 := n2*n2;
  RETURN n1+n2;
END;













