--system�û�����ʾ����

--��scott�û����贴������ͬ��ʵ�Ȩ��
grant  create public synonym to scott;

--��scott�û����贴��˽��ͬ��ʵ�Ȩ��
grant  create  synonym to scott;

--����
--ʹ��scott�û��µ�˽��ͬ���
select * from scott.en;

--ʹ��scott�û��µĹ���ͬ���
select * from dn;

--��scott�û�����ɾ������ͬ��ʵ�Ȩ��
grant drop public synonym to scott;


--scott�û�����ʾ����

--��������ͬ���
create public synonym dn for scott.deptnew;

--ʹ�ù���ͬ���
select * from dn;

--����˽��ͬ���
create synonym en for scott.empnew;

--ʹ��˽��ͬ���
select * from en;

--�鿴˽��ͬ���
select synonym_name,table_owner,table_name
from syn
where synonym_name = 'EN';

--�鿴����ͬ���
select synonym_name,table_owner,table_name
from all_synonyms
where synonym_name = 'DN';

--ɾ������ͬ���
drop public synonym dn;

--ɾ��˽��ͬ���
drop synonym en;


