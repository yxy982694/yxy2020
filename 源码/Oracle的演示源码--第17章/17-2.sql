--��SQLPLUS��ִ����������

--����
--�����ݿ�orcl��ȫ����
  exp system/oracle@orcl file=c:\oracle_bak\orcl_bak.dmp full=y
  
--�����ݿ���scott�û������ж��󵼳�
  exp scott/tiger1@orcl file=c:\oracle_bak\scott_bak.dmp owner=scott
  
--��scott�û��б�emp��dept����
  exp scott/tiger1@orcl file=c:\oracle_bak\table_bak.dmp tables=(emp,dept)
  

--����
--�������ļ����뵽���ݿ�
imp scott/tiger1@orcl file=c:\oracle_bak\scott_bak.dmp ignore=y

--��scott�û��ı����ļ����뵽yanln�û���
imp yanln/yanln@orcl fromuser=scott touser=yanln file=c:\oracle_bak\scott_bak.dmp

