/* *************************************

Select �⺻ ���� - ������, �÷� ��Ī

select �÷��� 
from   ���̺��̸�

*************************************** */
select  emp_id, emp_name, salary 
from emp;





--EMP ���̺��� ��� �÷��� ��� �׸��� ��ȸ. => select *
select * from emp;

--EMP ���̺��� ���� ID(emp_id), ���� �̸�(emp_name), ����(job) �÷��� ���� ��ȸ.
select  emp_id 
            ,emp_name
            ,job 
from    emp;

select   emp_name,
             job,
             emp_id
from     emp;

--EMP ���̺��� ����(job) � ����� �����Ǿ����� ��ȸ. - ������ ���� �ϳ����� ��ȸ�ǵ��� ó��.
-- select distinct �÷���, ..... :  �ߺ��� �ɷ��ش�.
select job from emp;

--EMP ���̺��� �μ���(dept_name)�� � ����� �����Ǿ����� ��ȸ - ������ ���� �ϳ����� ��ȸ�ǵ��� ó��.
select distinct job, dept_name 
from    emp;
-- 2���� �÷� ���� ���ļ� �ߺ��� ���� �ɷ���.


--EMP ���̺��� emp_id�� ����ID, emp_name�� �����̸�, hire_date�� �Ի���, salary�� �޿�, dept_name�� �ҼӺμ� ��Ī���� ��ȸ�Ѵ�.
-- select �÷��� as ��Ī  : as ��������. ��Ī�� ���ڷ� �����ϰų� Ư������(��������)�� �� ��� ū����ǥ�� ���Ѵ�.     
select      emp_id as ����ID,
                emp_name as �����̸�,
                hire_date as �Ի���,
                salary as �޿�,
                dept_name as �ҼӺμ�
from        emp;
-- as�� ���� ����.
select      emp_id  "���� ID", -- "�������"
                emp_name  �����̸�,
                hire_date  �Ի���,
                salary  �޿�,
                dept_name  �ҼӺμ�
from        emp;

select   emp_name "Emp_name" -- ����� �׻� �빮��. �ҹ��ڷ� ���� �ʹٸ� ��Ī�� ū����ǥ ���. 
from     emp;

/* ������ */
-- ������ �� �÷��� ��� ���鿡 �Ϸ������� ����ȴ�. 
-- ���� �÷��� ������ ��ȸ�� �� �ִ�. 

--�÷� + �� : �÷��� ��簪�� ���Ѵ�.
select emp_name, salary, salary + 1000 from emp;
select salary, salary, salary from emp;
select comm_pct, comm_pct * 100 from   emp;

-- �÷� * �÷� : ���� ���� ������ ����
select  salary * comm_pct Ŀ�̼�,
            salary, comm_pct
from    emp;

-- date + ����, date - ����. + ������ ��. - ������ �� ��¥.
select      sysdate+3 from dual; -- ���� ��¥�� 3�� �� ��¥.
select      sysdate+3 from dual; -- ���� ��¥�� 3�� �� ��¥.
select      sysdate+365 from dual; 

-- �÷�(��) || �÷�(��): ���δ�. ���ڿ� ���ϱ�(���̱�) ���ڿ� ����.
select      '$'||salary "Salary"
from        emp;

select      salary*comm_pct, comm_pct*100||'%'
from        emp
where      comm_pct is not null;

select      emp_id||emp_name||job
from        emp;


-- sysdate : ���� ������ �ý����� ��¥. 

--EMP ���̺��� ������ �̸�(emp_name), �޿�(salary) �׸���  �޿� + 1000 �� ���� ��ȸ.
select      emp_name,
                salary,
                salary + 1000
from        emp;


--EMP ���̺��� �Ի���(hire_date)�� �Ի��Ͽ� 10���� ���� ��¥�� ��ȸ.
select      hire_date, hire_date + 10 "�Ի� 10�� ��"
from        emp;




select * from emp
where comm_pct is null;
--TODO: EMP ���̺��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary), Ŀ�̼�_PCT(comm_pct), �޿��� Ŀ�̼�_PCT�� ���� ���� ��ȸ.
select  emp_id, emp_name, salary, comm_pct, salary*comm_pct "Ŀ�̼�"
from    emp;

--�ش�
select      emp_id,
                emp_name,
                salary,
                comm_pct,
                salary * comm_pct as "Ŀ�̼�"
from        emp;



--TODO:  EMP ���̺��� �޿�(salary)�� �������� ��ȸ. (���ϱ� 12)
select  salary, salary * 12 "����"
from    emp;


--TODO: EMP ���̺��� �����̸�(emp_name)�� �޿�(salary)�� ��ȸ. �޿� �տ� $�� �ٿ� ��ȸ.
select  emp_name "�̸�", + '$'||salary as salary
from    emp;



--TODO: EMP ���̺��� �Ի���(hire_date) 30����, �Ի���, �Ի��� 30�� �ĸ� ��ȸ
select  hire_date - 30 "�Ի� 30�� ��", hire_date "�Ի���", hire_date + 30 "�Ի� 30�� ��"
from    emp;






/* *************************************
Where ���� �̿��� �� ����
************************************* */
select * from emp
where   1 != 1;
/*
���� ����

�÷��� �����ΰ� ���̺�?
���̺�.
emp ���̺��� �ִ��� Ȯ��
���� ���� �÷� ����?

*/


--EMP ���̺��� ����_ID(emp_id)�� 110�� ������ �̸�(emp_name)�� �μ���(dept_name)�� ��ȸ
select      emp_name, dept_name, emp_id
from        emp
where      emp_id = 110;
-- emp_id�� 110���� ���غ��� ����ڴ� �����ȸ.

 
--EMP ���̺��� 'Sales' �μ��� ������ ���� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
select      emp_id "ID",
                emp_name "�̸�", 
                dept_name "�μ���"
from        emp
where      dept_name <> 'Sales';




--EMP ���̺��� �޿�(salary)�� $10,000�� �ʰ��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select      emp_id,
                emp_name,
                salary
from        emp
where      salary > 10000;


 
--EMP ���̺��� Ŀ�̼Ǻ���(comm_pct)�� 0.2~0.3 ������ ������ ID(emp_id), �̸�(emp_name), Ŀ�̼Ǻ���(comm_pct)�� ��ȸ.
select      emp_id,
                emp_name,
                comm_pct
from        emp
where      comm_pct >= 0.2
and          comm_pct <= 0.3;

select      emp_id,
                emp_name,
                comm_pct
from        emp
where      comm_pct between 0.2 and 0.3;
-- ������ ���� ��, �ι��� ���ļ��� �ƴ϶� �ѹ���. ����� ����. 


--EMP ���̺��� Ŀ�̼��� �޴� ������ �� Ŀ�̼Ǻ���(comm_pct)�� 0.2~0.3 ���̰� �ƴ� ������ ID(emp_id), �̸�(emp_name), Ŀ�̼Ǻ���(comm_pct)�� ��ȸ.
select      emp_id,
                emp_name,
                comm_pct
from        emp
where      comm_pct < 0.2
or             comm_pct >0.3;

select      emp_id,
                emp_name,
                comm_pct
from        emp
where      comm_pct not between 0.2 and 0.3;



--EMP ���̺��� ����(job)�� 'IT_PROG' �ų� 'ST_MAN' �� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ.
select      emp_id,
                emp_name,
                job
from        emp
where       job in ('IT_PROG', 'ST_MAN');
--where      job = 'IT_PROG'
--or            job = 'ST_MAN';



--EMP ���̺��� ����(job)�� 'IT_PROG' �� 'ST_MAN' �� �ƴ� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ.
select      emp_id,
                emp_name,
                job
from        emp
where       job not in('IT_PROG', 'ST_MAN');
--where      job != 'IT_PROG'
--and          job != 'ST_MAN';



--EMP ���̺��� ���� �̸�(emp_name)�� S�� �����ϴ� ������  ID(emp_id), �̸�(emp_name)
select      emp_id,
                emp_name
from        emp
where      emp_name like 'S%'; --�빮�� s ������ ���� �͵� ��.
-- %: 0���� �̻�
-- _: 1����

--%: 0���� �̻� ���� �͵� ��� ����, 
--_: �ѱ��� 



--EMP ���̺��� ���� �̸�(emp_name)�� S�� �������� �ʴ� ������  ID(emp_id), �̸�(emp_name)
select      emp_id,
                emp_name
from        emp
where      emp_name not like 'S%'; 



--EMP ���̺��� ���� �̸�(emp_name)�� en���� ������ ������  ID(emp_id), �̸�(emp_name)�� ��ȸ
select    emp_id,
              emp_name
from      emp
where    emp_name like '%en%'  --'%en';

-- %���� : ���ڷ� ������ ��
-- ����% : ���ڷ� �����ϴ� ��
-- %����%: ���ڰ� �� ��.

--EMP ���̺��� ���� �̸�(emp_name)�� �� ��° ���ڰ� ��e���� ��� ����� �̸��� ��ȸ
select      emp_name
from        emp
where      emp_name like '__e%';



-- EMP ���̺��� ������ �̸��� '%' �� ���� ������ ID(emp_id), �����̸�(emp_name) ��ȸ
select      emp_id,
                emp_name
from        emp
where      emp_name like '%#%%' escape '#';
-- escape ���� ǥ��
-- escape ���ڴ� ����ڰ� ����



--EMP ���̺��� �μ���(dept_name)�� null�� ������ ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
select      emp_id,
                emp_name,
                dept_name
from        emp
where      dept_name is null;



--�μ���(dept_name) �� NULL�� �ƴ� ������ ID(emp_id), �̸�(emp_name), �μ���(dept_name) ��ȸ
select      emp_id,
                emp_name,
                dept_name
from        emp
where      dept_name is not null;



--TODO: EMP ���̺��� ����(job)�� 'IT_PROG'�� �������� ��� �÷��� �����͸� ��ȸ. 
select * from emp
where job = 'IT_PROG';


--TODO: EMP ���̺��� ����(job)�� 'IT_PROG'�� �ƴ� �������� ��� �÷��� �����͸� ��ȸ. 
select * from emp
where job <> 'IT_PROG';
--where job != 'IT_PROG';


--TODO: EMP ���̺��� �̸�(emp_name)�� 'Peter'�� �������� ��� �÷��� �����͸� ��ȸ
select  * from emp
where   lower(emp_name) = 'peter'; --��ҹ��ڰ� ���� �ִ� ���. 
--where emp_name = 'Peter'; 


--TODO: EMP ���̺��� �޿�(salary)�� $10,000 �̻��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select   emp_id,
            emp_name,
            salary
from    emp
--where   salary >= 10000;
where   salary < 3000
order by 3;

--TODO: EMP ���̺��� �޿�(salary)�� $3,000 �̸��� ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ



--TODO: EMP ���̺��� �޿�(salary)�� $3,000 ������ ������ ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select   emp_id,
            emp_name,
            salary
from    emp
--where   salary >= 10000;
where   salary <= 3000
order by 3;


--TODO: �޿�(salary)�� $4,000���� $8,000 ���̿� ���Ե� �������� ID(emp_id), �̸�(emp_name)�� �޿�(salary)�� ��ȸ
select emp_id, emp_name, salary
from emp
where salary between 4000 and 8000
order by salary;



--TODO: �޿�(salary)�� $4,000���� $8,000 ���̿� ���Ե��� �ʴ� ��� ��������  ID(emp_id), �̸�(emp_name), �޿�(salary)�� ǥ��
select emp_id, emp_name, salary
from emp
where salary not between 4000 and 8000
order by salary;


--TODO: EMP ���̺��� 2007�� ���� �Ի��� ��������  ID(emp_id), �̸�(emp_name), �Ի���(hire_date)�� ��ȸ.
select      emp_id, emp_name, hire_date
from        emp
where       hire_date >= '2007-01-01';


--TODO: EMP ���̺��� 2004�⿡ �Ի��� �������� ID(emp_id), �̸�(emp_name), �Ի���(hire_date)�� ��ȸ.
select      emp_id, emp_name, hire_date
from        emp
--where       hire_date between '2004-01-01' and '2004-12-31';
where       to_char(hire_date, 'yyyy') = 2004;

--TODO: EMP ���̺��� 2005�� ~ 2007�� ���̿� �Ի�(hire_date)�� �������� ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date)�� ��ȸ.
select      emp_id, emp_name, hire_date
from        emp
--where       hire_date between '2005-01-01' and '2007-12-31'
where    to_char(hire_date, 'yyyy') between '2005' and '2007'
order by 3;


--TODO: EMP ���̺��� ������ ID(emp_id)�� 110, 120, 130 �� ������  ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ
select      emp_id, emp_name, job
from        emp
where       emp_id in (110, 120,130);
�� �÷��� ������ �ִ� ���� �������� ���� in ������

--TODO: EMP ���̺��� �μ�(dept_name)�� 'IT', 'Finance', 'Marketing' �� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
select      emp_id, emp_name, dept_name
from        emp
where       dept_name in ('IT', 'Finance', 'Marketing');


--TODO: EMP ���̺��� 'Sales' �� 'IT', 'Shipping' �μ�(dept_name)�� �ƴ� �������� ID(emp_id), �̸�(emp_name), �μ���(dept_name)�� ��ȸ.
select      emp_id,
               emp_name,
               dept_name
from       emp
where      dept_name not in ('Sales', 'IT', 'Shipping');


--TODO: EMP ���̺��� �޿�(salary)�� 17,000, 9,000,  3,100 �� ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.
select   * from emp
where       salary in (17000, 9000, 3100);


--TODO EMP ���̺��� ����(job)�� 'SA'�� �� ������ ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ
select      emp_id,
               emp_name,
               job
from        emp
where       job like '%SA%';


--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ������ ������ ID(emp_id), �̸�(emp_name), ����(job)�� ��ȸ
select      emp_id, emp_name, job
from       emp
where     job like '%MAN';



--TODO. EMP ���̺��� Ŀ�̼��� ����(comm_pct�� null��) ��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary) �� Ŀ�̼Ǻ���(comm_pct)�� ��ȸ
select      emp_id, emp_name, salary, comm_pct
from        emp
where      comm_pct is null ;
    

--TODO: EMP ���̺��� Ŀ�̼��� �޴� ��� ������ ID(emp_id), �̸�(emp_name), �޿�(salary) �� Ŀ�̼Ǻ���(comm_pct)�� ��ȸ
select      emp_id, emp_name, salary, comm_pct
from        emp
where       comm_pct is not null;


--TODO: EMP ���̺��� ������ ID(mgr_id) ���� ������ ID(emp_id), �̸�(emp_name), ����(job), �ҼӺμ�(dept_name)�� ��ȸ
select    emp_id, emp_name, job, dept_name
from     emp
where    mgr_id is null;



--TODO : EMP ���̺��� ����(salary * 12) �� 200,000 �̻��� �������� ��� ������ ��ȸ.
select * from emp
where (salary * 12) >= 200000;



/* *************************************
 WHERE ������ �������� ���
 AND OR
 
 �� and �� -> ��: ��ȸ ��� ��
 ���� or ���� -> ����: ��ȸ ��� ���� �ƴ�.
 
 ���� �켱 ���� :
 1. and
 2. or
 
 where ����1 and ����2 or ����3
 1. ���� 1 and ���� 2
 2. 1��� or ����3
 
 or�� ���� �Ϸ��� where ����1 and (����2 or ����3)
 
 **************************************/
-- EMP ���̺��� ����(job)�� 'SA_REP' �̰� �޿�(salary)�� $9,000 �� ������ ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.
select      emp_id,
                emp_name,
                job,
                salary
from        emp
where      job = 'SA_REP'
and         salary=9000;



-- EMP ���̺��� ����(job)�� 'FI_ACCOUNT' �ų� �޿�(salary)�� $8,000 �̻����� ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� ��ȸ.
select      emp_id,
                emp_name,
                job,
                salary
from        emp
where      job = 'FI_ACCOUNT'
or            salary >= 8000;
                


--TODO: EMP ���̺��� �μ�(dept_name)�� 'Sales��'�� ����(job)�� 'SA_MAN' �̰� �޿��� $13,000 ������ 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �޿�(salary), �μ�(dept_name)�� ��ȸ
select      emp_id,
               emp_name,
               job,
               salary,
               dept_name
from        emp
where      dept_name = 'Sales' and job = 'SA_MAN' and salary <= 13000;


--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �߿��� �μ�(dept_name)�� 'Shipping' �̰� 2005������ �Ի��� 
--      ��������  ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date), �μ�(dept_name)�� ��ȸ
select    emp_id,
             emp_name
             job,
             hire_date,
             dept_name
from       emp
where   job like '%MAN%' 
and      dept_name = 'Shipping' 
and      hire_date >= '2005-01-01';


--TODO: EMP ���̺��� �Ի�⵵�� 2004���� ������� �޿��� $20,000 �̻��� 
--      �������� ID(emp_id), �̸�(emp_name), �Ի���(hire_date), �޿�(salary)�� ��ȸ.
select    emp_id,
             emp_name,
             hire_date,
             salary
from     emp
where   to_char(hire_date, 'yyyy') = '2004' 
or         salary > 20000;


--TODO : EMP ���̺���, �μ��̸�(dept_name)��  'Executive'�� 'Shipping' �̸鼭 �޿�(salary)�� 6000 �̻��� ����� ��� ���� ��ȸ. 
select * from emp
--where dept_name in ('Executive', 'Shipping')
where    dept_name = 'Executive'
or          dept_name = 'Shipping'
and salary >= 6000;
--and�� �� �켱����. �μ��� shipping�̰� and salary�� 6000�� ��� ����.
-- �ǹ̸� ���� �Ϸ��� ��ȣ�� �߰�. (dept_name = 'Exe---- 'Shipping')

--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �߿��� �μ��̸�(dept_name)�� 'Marketing' �̰ų� 'Sales'�� 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �μ�(dept_name)�� ��ȸ
select    emp_id,
             emp_name,
             job,
             dept_name
from     emp
where   job like '%MAN%'
and       (dept_name = 'Marketing'
or          dept_name = 'Sales');
--and      dept_name in ('Marketing', 'Sales');



--TODO: EMP ���̺��� ����(job)�� 'MAN'�� ���� ������ �� �޿�(salary)�� $10,000 ������ �ų� 2008�� ���� �Ի��� 
--      ������ ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date), �޿�(salary)�� ��ȸ
select    emp_id,
             emp_name,
             job,
             hire_date,
             salary
from     emp
where   job like '%MAN%'
and       (salary <= 10000
or         to_char(hire_date, 'yyyy') >= '2008') ;


/* *************************************
order by�� �̿��� ����
- select���� ���� �������� ���� ����.
- order by ���ı����÷� ���Ĺ�� [, �����������÷� ���Ĺ��,...]
- ���ı����÷�
        - �÷��̸�.
        - select���� ����� ����.
        - ��Ī�� ���� ��� ��Ī,
- ���Ĺ��
        - asc : �������� (���-��������)
        - desc : ��������
- ���ڿ�: ���� < �빮�� < �ҹ��� < �ѱ� < null
- date : ���� < �̷� < null
************************************* */

-- �������� ��ü ������ ���� ID(emp_id)�� ū ������� ������ ��ȸ
select *
from emp
order by emp_id desc; --emp_id ������ ������� ����


-- �������� id(emp_id), �̸�(emp_name), ����(job), �޿�(salary)�� 
-- ����(job) ������� (A -> Z) ��ȸ�ϰ� ����(job)�� ���� ��������  �޿�(salary)�� ���� ������� 2�� �����ؼ� ��ȸ.
select      emp_id,
               emp_name,
               job,
               salary
from       emp
order by 3, 4 desc; -- select �������ε� ���� ����
-- order by job asc, salary desc; --asc ��������

select  emp_name,
            salary*comm_pct as comm
from     emp
where   comm_pct is not null
order by comm desc;
-- order by 2 desc;
-- order by salary*comm_pct;

/*
NULL
ASC : ������, order by �÷��� asc nulls first
DESC : ó��.  order by �÷��� desc nulls last
-- nulls first, nulls last ==> ����Ŭ ����.
*/
--�μ����� �μ���(dept_name)�� ������������ ������ ��ȸ�Ͻÿ�.
select  dept_name  �μ��� from    emp
order by �μ��� nulls first;
order by �μ��� desc nulls last;
-- order by dept_name desc nulls last;
order by dept_name asc nulls first;

--TODO: �޿�(salary)�� $5,000�� �Ѵ� ������ ID(emp_id), �̸�(emp_name), �޿�(salary)�� �޿��� ���� �������� ��ȸ
select emp_id, emp_name, salary
from emp
where salary > 5000
order by salary desc;


--TODO: �޿�(salary)�� $5,000���� $10,000 ���̿� ���Ե��� �ʴ� ��� ������  ID(emp_id), �̸�(emp_name), �޿�(salary)�� �̸�(emp_name)�� ������������ ����
select    emp_id, emp_name, salary
from     emp
where   salary not between 5000 and 10000
order by emp_name;


--TODO: EMP ���̺��� ������ ID(emp_id), �̸�(emp_name), ����(job), �Ի���(hire_date)�� �Ի���(hire_date) ��(��������)���� ��ȸ.
 select    emp_id, emp_name, hire_date
 from      emp
 order by hire_date;


--TODO: EMP ���̺��� ID(emp_id), �̸�(emp_name), �޿�(salary), �Ի���(hire_date)�� �޿�(salary) ������������ �����ϰ� �޿�(salary)�� ���� ���� �Ի���(hire_date)�� ������ ������ ����.
select    emp_id,
             emp_name,
             salary,
             hire_date
from     emp
order by salary asc, hire_date asc;

