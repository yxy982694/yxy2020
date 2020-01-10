--1��������������Ĵ洢����
--����Ա����ɾ��ָ����Ա����Ϣ
CREATE OR REPLACE PROCEDURE proc1
(v_empno IN empnew.empno%TYPE)
IS
BEGIN
  --����Ա����ɾ��ָ����Ա����Ϣ
  DELETE FROM empnew WHERE empno = v_empno;
  --�ж��Ƿ�ɾ���ɹ�
  IF SQL%NOTFOUND THEN
    -- -20000~ -20999֮��
    RAISE_APPLICATION_ERROR(-20008,'ָ��ɾ����Ա�������ڣ�');
  ELSE
    DBMS_OUTPUT.put_line('ɾ���ɹ���');   
  END IF;
END;  

--2;����������������Ĵ洢����
--��ָ�����ŵ�ƽ�����ʺ�������
CREATE OR REPLACE PROCEDURE proc2
(v_deptno IN NUMBER, v_avgsal OUT NUMBER, v_cnt out NUMBER)
IS
BEGIN
  SELECT AVG(sal),COUNT(*)
  INTO v_avgsal, v_cnt
  FROM emp
  WHERE deptno = v_deptno;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.put_line('û�д˲��ţ�');
  WHEN OTHERS THEN
    DBMS_OUTPUT.put_line(SQLERRM);
END;
    

--3����������������������Ĵ洢����
--ʵ���������Ľ���
CREATE OR REPLACE PROCEDURE proc3
(v_num1 IN OUT NUMBER, v_num2 IN OUT NUMBER)
AS
  v_temp NUMBER := 0;
BEGIN
  v_temp:= v_num1;
  v_num1:= v_num2;
  v_num2:= v_temp;
END;





