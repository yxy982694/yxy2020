--�����޲εĺ���
BEGIN
  DBMS_OUTPUT.put_line(first_func);
END;

--���ô�����������ĺ���
BEGIN
  DBMS_OUTPUT.put_line('���ŵĹ����ܶ�'||func1(&no));
END;

--���ô�����������ĺ���
DECLARE
   v_name emp.ename%TYPE;
   v_sal  emp.sal%TYPE;
   v_salsum NUMBER;
BEGIN
  v_salsum := func2(&no,v_name,v_sal);
  DBMS_OUTPUT.put_line('������'||v_name);
  DBMS_OUTPUT.put_line('���ʣ�'||v_sal);
  DBMS_OUTPUT.put_line('�����룺'||v_salsum);
END;

--���ô���������������ĺ���
DECLARE
  v_n1 number :=5;
  v_n2 number :=6;
  v_sum number;
BEGIN
  v_sum := func3(v_n1,v_n2);
  DBMS_OUTPUT.put_line('N1��ƽ����'||v_n1);
  DBMS_OUTPUT.put_line('N2��ƽ����'||v_n2);
  DBMS_OUTPUT.put_line('ƽ���ͣ�'||v_sum);
END;


--ɾ���洢����
DROP FUNCTION func1;
