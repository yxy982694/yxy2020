--创建存储过程
CREATE OR REPLACE PROCEDURE first_proc
IS
BEGIN
  DBMS_OUTPUT.PUT_LINE('我是过程');
  DBMS_OUTPUT.PUT_LINE('Hello Everyone!');
END;

--创建函数
CREATE OR REPLACE FUNCTION first_func
RETURN VARCHAR2
IS
BEGIN
  DBMS_OUTPUT.put_line('我是函数');
  RETURN 'Hello Everyone!';
END;


--调用存储过程
BEGIN
  first_proc;
END;

--调用存储函数
BEGIN
  DBMS_OUTPUT.put_line(first_func);
END;
 
