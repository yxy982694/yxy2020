/*
--����Ա���ţ��ж�Ա������, ��ʾ����С��3000��Ա�����������ʡ�
--�򵥵�IF���
DECLARE
      v_name  emp.ename%TYPE;
      v_sal   emp.sal%TYPE;
BEGIN
      SELECT ename,sal
      INTO   v_name,v_sal
      FROM   emp
      WHERE  empno = &no;
      IF   v_sal <3000 THEN
           DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal);
      END IF;
END;


SELECT * FROM emp;

--����Ա���ţ��ж�Ա������,������С��3000��Ա��������200������ʾ�ǹ��ʵ�Ա������������Ա����ʾԱ�����������ʡ�
--���ط�֧���
DECLARE
       v_name    empnew.ename%TYPE;
       v_sal     empnew.sal%TYPE;
       v_empno   empnew.empno%TYPE := &no;
BEGIN
       SELECT ename,sal
       INTO   v_name,v_sal
       FROM   empnew
       WHERE  empno = v_empno;
       IF  v_sal <3000 THEN
           UPDATE empnew set sal = sal + 200 where empno = v_empno;
           COMMIT;
           DBMS_OUTPUT.put_line(v_name||'�ǹ�����');
       ELSE
           DBMS_OUTPUT.put_line(v_name||'�Ĺ����ǣ�'||v_sal);
       END IF;
END;
   
select * from empnew;


--����Ա���ţ��ж�Ա������, ����С��2000����ʾ�����룬����С��6000����ʾ�е����룬������ʾ�����롣
--���ط�֧���
DECLARE
       v_name    empnew.ename%TYPE;
       v_sal     empnew.sal%TYPE;
       
BEGIN
       SELECT ename,sal
       INTO   v_name,v_sal
       FROM   empnew
       WHERE  empno = &no;
       IF v_sal<2000  THEN
          DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal||' ���ڵ�����');
       ELSIF v_sal<6000  THEN
          DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal||' �����е�����');
       ELSE
          DBMS_OUTPUT.PUT_LINE(v_name||'�Ĺ����ǣ�'||v_sal||' ���ڸ�����');
       END IF;       
END;
*/

--����ɼ��ȼ����ж������ĸ���Σ�����ӡ���
--CASE ��ֵ�Ƚ�
DECLARE 
       v_grade char(1) := '&no';
BEGIN
       CASE v_grade
            WHEN  'A'  THEN
                  DBMS_OUTPUT.PUT_LINE('����');
            WHEN  'B'  THEN
                  DBMS_OUTPUT.PUT_LINE('�е�');     
            WHEN  'C'  THEN
                  DBMS_OUTPUT.PUT_LINE('һ��'); 
            ELSE
                  DBMS_OUTPUT.PUT_LINE('��������');    
       END CASE;              
END;

--����Ա���ţ���ȡԱ�����ʣ��жϹ��ʣ��������С��1500��������100���������С��2500��������80���������С��5000��������50.
--CASE �ǵ�ֵ�Ƚ�
DECLARE       
       v_sal     empnew.sal%TYPE;
       v_empno   empnew.empno%TYPE := &no;
BEGIN
       SELECT sal
       INTO   v_sal
       FROM   empnew
       WHERE  empno = &no;
       CASE 
              WHEN v_sal<1500 THEN
                   UPDATE empnew set comm = nvl(comm,0)+100 WHERE empno = v_empno;
              WHEN v_sal<2500 THEN
                   UPDATE empnew set comm = nvl(comm,0)+80 WHERE empno = v_empno;     
              WHEN v_sal<5000 THEN
                   UPDATE empnew set comm = nvl(comm,0)+50 WHERE empno = v_empno;       
              --COMMIT; 
       END CASE;
END;

select * from empnew;
