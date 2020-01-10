--调用无参的存储过程
begin
  first_proc;
end;

--调用带有输入参数的存储过程
begin
  proc1(1234);
end;

--调用带有输出参数的存储过程
DECLARE
   v_avgsalary NUMBER;
   v_count     NUMBER;
BEGIN
   PROC2(10,v_avgsalary,v_count);
   DBMS_OUTPUT.put_line('平均工资:'||v_avgsalary);
   DBMS_OUTPUT.put_line('总人数:'||v_count);
END;


--调用带有输入输出参数的存储过程
DECLARE
   v_n1 NUMBER := 5;
   v_n2 NUMBER := 10;
BEGIN
   PROC3(v_n1,v_n2);
   DBMS_OUTPUT.put_line('N1:'||v_n1);
   DBMS_OUTPUT.put_line('N2:'||v_n2);
END;


--删除存储过程
DROP PROCEDURE proc1;

