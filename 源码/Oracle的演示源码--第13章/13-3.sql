--��ȡ�쳣�Ĵ������ʹ�����Ϣ
BEGIN
    DELETE FROM DEPT WHERE deptno = &deptno;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.put_line(SQLCODE||'####'||SQLERRM);
END;


--��Ԥ�����쳣�Ĵ���
DECLARE
    --1:�����Ԥ�����쳣�ı�ʶ��
    e_fk EXCEPTION;
    --2:������õ��쳣��Oracle����������
    -- -2292�������
    PRAGMA EXCEPTION_INIT(e_fk,-2292);
BEGIN
    DELETE FROM DEPT WHERE deptno = &deptno;
EXCEPTION
    --3:���񲢴����쳣
    WHEN e_fk THEN
        DBMS_OUTPUT.PUT_LINE('�˲�������Ա��������ɾ���˲��ţ�');
    WHEN OTHERS THEN
        DBMS_OUTPUT.put_line(SQLCODE||'####'||SQLERRM);
END;
