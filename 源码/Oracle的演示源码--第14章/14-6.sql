--���ŵ�������
CREATE OR REPLACE FUNCTION func4
(v_deptno IN NUMBER DEFAULT 10,v_t IN NUMBER)
RETURN NUMBER
IS
       v_sumsal NUMBER;
BEGIN 
       SELECT SUM((sal+nvl(comm,0))*12)
       INTO v_sumsal
       FROM emp
       WHERE deptno = v_deptno;   
       DBMS_OUTPUT.put_line('���ԣ�'||v_t);    
       RETURN v_sumsal;
EXCEPTION
       WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.put_line('û�д˲���');
       WHEN OTHERS THEN
         DBMS_OUTPUT.put_line(SQLERRM);
END;

--����
declare
         v_totalsal number;
begin
        v_totalsal := func4(v_t=>1);
        dbms_output.put_line(v_totalsal);
end;
