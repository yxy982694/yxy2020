--�����û������Ա���ţ�����ָ��Ա���Ĺ��ʣ����繤����100
--��ʽ�α�
BEGIN
  UPDATE empnew SET sal = sal + 100 WHERE empno = &no;
  IF SQL%FOUND THEN
    DBMS_OUTPUT.put_line('�ɹ��޸�Ա���Ĺ���');
    COMMIT;
  ELSE
    DBMS_OUTPUT.put_line('�޸�Ա������ʧ��!');
    ROLLBACK;
  END IF;
END;

SELECT * FROM empnew;
