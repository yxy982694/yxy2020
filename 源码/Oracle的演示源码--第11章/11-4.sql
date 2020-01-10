DECLARE
    v_name  VARCHAR2(10);
    v_sal   NUMBER(7,2);
    v_hiredate  DATE;
    c_tax_rate  CONSTANT  NUMBER(3,2) := 0.02;
    v_tax_sal   NUMBER(7,2);
    v_valid     BOOLEAN  DEFAULT TRUE;
BEGIN
    SELECT ename,sal,hiredate
    INTO   v_name,v_sal,v_hiredate
    FROM   emp
    WHERE  empno = 7369;
    --��������˰
    v_tax_sal:= v_sal * c_tax_rate;
    --��ӡ���
    DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal||' ��Ա�����ǣ�' || v_hiredate|| ' ����˰�ǣ�' || v_tax_sal);
    IF v_valid THEN
       DBMS_OUTPUT.PUT_LINE('�Ѻ�ʵ');
    END IF;
END;
