--查询所有员工的员工号、姓名和职位的信息。
DECLARE
  --定义游标
  CURSOR emp_cursor IS SELECT empno,ename,job FROM emp;
  v_empno emp.empno%TYPE;
  v_ename emp.ename%TYPE;
  v_job   emp.job%TYPE;
BEGIN
  --打开游标，执行查询
  OPEN emp_cursor;
  --提取数据  
  LOOP
       FETCH emp_cursor INTO v_empno,v_ename,v_job;
       DBMS_OUTPUT.PUT_LINE('员工号：'||v_empno||'，姓名：'||v_ename||',职位：'||v_job);
       --什么时候能够退出循环？
       --%FOUND,%NOTFOUND
       EXIT WHEN emp_cursor%NOTFOUND;       
  END LOOP;
  --关闭游标
  CLOSE emp_cursor;
END;









 
