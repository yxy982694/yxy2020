--�����޲εĴ洢����
begin
  first_proc;
end;

--���ô�����������Ĵ洢����
begin
  proc1(1234);
end;

--���ô�����������Ĵ洢����
DECLARE
   v_avgsalary NUMBER;
   v_count     NUMBER;
BEGIN
   PROC2(10,v_avgsalary,v_count);
   DBMS_OUTPUT.put_line('ƽ������:'||v_avgsalary);
   DBMS_OUTPUT.put_line('������:'||v_count);
END;


--���ô���������������Ĵ洢����
DECLARE
   v_n1 NUMBER := 5;
   v_n2 NUMBER := 10;
BEGIN
   PROC3(v_n1,v_n2);
   DBMS_OUTPUT.put_line('N1:'||v_n1);
   DBMS_OUTPUT.put_line('N2:'||v_n2);
END;


--ɾ���洢����
DROP PROCEDURE proc1;

