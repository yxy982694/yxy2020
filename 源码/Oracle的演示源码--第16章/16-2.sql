--����1����ֹSCOTT�û���DDL����
CREATE OR REPLACE TRIGGER scott_trigger
BEFORE DDL
ON SCHEMA
BEGIN
   RAISE_APPLICATION_ERROR(-20005,'scott�û���ֹ���е�DDL������');
END;

--����
CREATE SEQUENCE test_seq;
