--����sys�û�


--�����¼���
CREATE   TABLE   event_table(
	event varchar2(50), 
	event_time date
);

--�ٴ���һ��ϵͳ������
create or replace trigger startup_trigger
after startup on database
begin
  insert into event_table values(ora_sysevent,SYSDATE);
end;


--��SQLPLUS����ִ����������
SHUTDOWN
STARTUP
SELECT    *   FROM event_table;
