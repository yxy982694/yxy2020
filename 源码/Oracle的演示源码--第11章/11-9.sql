--����ѭ��
DECLARE
    v_cnt INT :=1;
BEGIN
    LOOP 
          DBMS_OUTPUT.PUT_LINE(v_cnt);
          EXIT WHEN v_cnt = 10;
          v_cnt := v_cnt+1;          
    END LOOP;
END;
   
--whileѭ��
DECLARE
    v_cnt INT :=1;
BEGIN
    WHILE v_cnt<=10 LOOP
          DBMS_OUTPUT.PUT_LINE(v_cnt);
          v_cnt := v_cnt+1;
    END LOOP;
END;

--forѭ��
BEGIN
    FOR i  IN REVERSE 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
END;
