--���չ�Ա��Ϣ������ʾ��Ƹ������3���º����һ������һ�����ڣ������ڸ�ʽ�磺2017-01-06��

select empno,ename,to_char(next_day(add_months(hiredate,3),'����һ'),'YYYY-MM-DD') new_date 
from emp;



--���չ�Ա��Ϣ����ʾ��Ա��н���������뵽2 λС���Ľ����Ȼ���н�ʸ�ʽ�ԡ��� 1,182.19��������������ʽ���и�ʽ��

select empno,ename,sal,to_char(round(sal/30,2),'L9,999.99')
from emp;
