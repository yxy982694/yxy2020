--��������ĺ��� round

--��Ա�����չ���
select round(sal/30,2) from emp;


--�ضϺ��� trunc
select round(sal/30,2),trunc(sal/30,2) from emp;


--�������ĺ��� Mod

--��Ա����Ϊż����Ա����Ϣ
select * from emp where mod(empno,2)=0;
