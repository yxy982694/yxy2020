/*
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
*/


--Ƕ��ѭ��
DECLARE
    v_result INT;
BEGIN
    <<outter>>
    FOR i IN 1..5 LOOP
        <<inter>>
        FOR j IN 1..5 LOOP
          v_result:=i;
          EXIT outter WHEN i=4;
        END LOOP inter;
        DBMS_OUTPUT.PUT_LINE('��'||v_result);
     END LOOP outter;
     DBMS_OUTPUT.PUT_LINE('��'||v_result);
END;

--CONTINUE
DECLARE
    v_cnt INT :=0;
BEGIN
    LOOP 
             v_cnt := v_cnt+1;
             CONTINUE WHEN v_cnt = 5;
             DBMS_OUTPUT.PUT_LINE(v_cnt);
             EXIT WHEN v_cnt = 10;     
    END LOOP;
END;
