--��ְ����ְ���ǹ��ʣ��ܲ���1000Ԫ��������500Ԫ������Ա����300Ԫ��
--1������ʾ�α�ĳ��淽ʽʵ��ҵ������
DECLARE
  --�����α�
  CURSOR empnew_cursor IS SELECT empno,job FROM empnew;
  v_empno empnew.empno%TYPE;
  v_job   empnew.job%TYPE;
BEGIN
  --���α�
  OPEN empnew_cursor;
  --��ȡ����
  LOOP
    FETCH empnew_cursor INTO v_empno,v_job;
    IF v_job='PRESIDENT' THEN
      UPDATE empnew SET sal = sal + 1000 WHERE empno = v_empno;
    ELSIF v_job='MANAGER' THEN
      UPDATE empnew SET sal = sal + 500 WHERE empno = v_empno;
    ELSE
      UPDATE empnew SET sal = sal + 300 WHERE empno = v_empno;
    END IF;
    EXIT WHEN empnew_cursor%NOTFOUND;
  END LOOP;
  COMMIT;
  --�ر��α�
  CLOSE empnew_cursor;
END;

--2�����α�FORѭ���ķ�ʽʵ��ҵ������
DECLARE
  --�����α�
  CURSOR empnew_cursor IS SELECT empno,job FROM empnew; 
BEGIN
  FOR empnew_record IN empnew_cursor LOOP    
      DBMS_OUTPUT.put_line(empnew_record.empno||'----'||empnew_record.job);      
      IF empnew_record.job = 'PRESIDENT' THEN
        UPDATE empnew SET sal = sal + 1000 WHERE empno = empnew_record.empno;
      ELSIF empnew_record.job = 'MANAGER' THEN
        UPDATE empnew SET sal = sal + 500 WHERE empno = empnew_record.empno;
      ELSE
        UPDATE empnew SET sal = sal + 300 WHERE empno = empnew_record.empno;
      END IF;
  END LOOP;
  --COMMIT;
END;

select * from empnew for update;


--3��ʹ���α���ӻ�ɾ������ʱ�������α�ʱ����FOR UPDATE �Ӿ���Խ��α���ȡ���������ݽ����м�����
DECLARE
  --�����α�
  CURSOR empnew_cursor IS SELECT empno,job FROM empnew FOR UPDATE; 
BEGIN
  FOR empnew_record IN empnew_cursor LOOP    
      DBMS_OUTPUT.put_line(empnew_record.empno||'----'||empnew_record.job);      
      IF empnew_record.job = 'PRESIDENT' THEN
        UPDATE empnew SET sal = sal + 1000 WHERE CURRENT OF empnew_cursor;
      ELSIF empnew_record.job = 'MANAGER' THEN
        UPDATE empnew SET sal = sal + 500 WHERE CURRENT OF empnew_cursor;
      ELSE
        UPDATE empnew SET sal = sal + 300 WHERE CURRENT OF empnew_cursor;
      END IF;
  END LOOP;
  COMMIT;
END;

SELECT * FROM empnew;




