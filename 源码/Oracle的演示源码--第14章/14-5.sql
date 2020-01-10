--调用无参的函数
BEGIN
  DBMS_OUTPUT.put_line(first_func);
END;

--调用带有输入参数的函数
BEGIN
  DBMS_OUTPUT.put_line('部门的工资总额'||func1(&no));
END;

--调用带有输出参数的函数
DECLARE
   v_name emp.ename%TYPE;
   v_sal  emp.sal%TYPE;
   v_salsum NUMBER;
BEGIN
  v_salsum := func2(&no,v_name,v_sal);
  DBMS_OUTPUT.put_line('姓名：'||v_name);
  DBMS_OUTPUT.put_line('工资：'||v_sal);
  DBMS_OUTPUT.put_line('年收入：'||v_salsum);
END;

--调用带有输入输出参数的函数
DECLARE
  v_n1 number :=5;
  v_n2 number :=6;
  v_sum number;
BEGIN
  v_sum := func3(v_n1,v_n2);
  DBMS_OUTPUT.put_line('N1的平方：'||v_n1);
  DBMS_OUTPUT.put_line('N2的平方：'||v_n2);
  DBMS_OUTPUT.put_line('平方和：'||v_sum);
END;


--删除存储函数
DROP FUNCTION func1;
