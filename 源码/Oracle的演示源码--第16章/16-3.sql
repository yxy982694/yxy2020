--����2��
--����һ����¼���ݿ����DDL��������־��
create table object_log(
       logid number constraint pk_logid primary key,       
       operatedate date not null��
       objecttype varchar2(50) not null,
       objectowner varchar2(50) not null
);

CREATE SEQUENCE object_log_seq;

--��������ʵ�ֶ����ݿ����DDL������¼�Ĵ�����
CREATE OR REPLACE TRIGGER object_trigger
AFTER CREATE OR DROP OR ALTER
ON DATABASE
BEGIN
  INSERT INTO object_log(logid,operatedate,objecttype,objectowner)
  VALUES(object_log_seq.nextval,sysdate,ORA_DICT_OBJ_TYPE,ORA_DICT_OBJ_OWNER);
END;

--����
conn yanln/yanln
create sequence test_seq1;

conn system/password
select * from object_log;
