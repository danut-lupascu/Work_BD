SELECT employee_id, hire_date, 
MONTHS_BETWEEN (SYSDATE, hire_date) TENURE, 
ADD_MONTHS (hire_date, 6) REVIEW, 
NEXT_DAY(hire_date, 'FRIDAY'), LAST_DAY(hire_date) 
FROM employees 
WHERE MONTHS_BETWEEN (SYSDATE, hire_date) > 36; 


SELECT employee_id, hire_date, 
ROUND (hire_date, 'MONTH'), 
TRUNC(hire_date, 'MONTH') 
FROM employees WHERE hire_date like '%97' ; 


SELECT employee_id,TO_CHAR (hire_date, 'MM/YY')  
Month_Hired 
FROM employees
WHERE last_name='Higgins';


 
SELECT last_name,TO_CHAR (hire_date, 'fmDD Month YYYY') 
HIRE_DATE FROM employees; 

SELECT last_name,TO_CHAR (hire_date, 'fmDdspth "of" Month YYYY fmHH:MI:SS AM') HIRE_DATE FROM employees; 

SELECT  TO_CHAR(salary,'$99,999') SALARY 
 FROM   employees 
 WHERE       last_name= 'Ernst'; 

 
SELECT last_name, hire_date FROM employees 
WHERE hire_date = TO_DATE ('May 24, 1999', 'fxMonth DD, YYYY');

SELECT last_name, salary, NVL(commission_pct,0),  (Salary*12)+(salary*12*commission_pct) AN_SAL FROM employees; 

SELECT last_name, salary,NVL(commission_pct,0),(Salary*12)+(salary*12+NVL(commission_pct,0)) A_SAL FROM employees; 

SELECT job_id, salary, 
DECODE(job_id, 'IT_PROG', salary*1.1,'ST_CLERK', salary *1.15, 'SA_REP', salary *1.20, SALARY)REVISED_SALARY FROM employees; 

SELECT last_name, NVL(TO_CHAR(manager_id),'No Manager') FROM    employees WHERE   manager_id IS NULL; 


select sysdate from dual;
Monday,Twenty-EighthofSeptember
select last_name,employee_id,salary,round(salary*1.15,0) as salar_nou, round(salary*1.15,0)-salary as crestere from employees;

select last_name,hire_date,to_char(next_day(add_months(hire_date,6),'monday'),'fmDay","Ddspth"of"Month YYYY') review from employees;

select last_name,round(MONTHS_BETWEEN(sysdate,hire_date),0) luni_de_activitate from employees order by luni_de_activitate;
select last_name || '_castiga_un_salariu_de_' ||salary||'_dar_ar_dori_'||salary*3 from employees;

select last_name || '_castiga_un_salariu_de_' ||salary||'_dar_ar_dori_'||to_char(salary*3,'$99999') salariu_de_vis from employees;

select last_name, LPAD(salary,15, '$') salariu from employees;

select initcap(last_name),length(last_name) from employees where substr(last_name,1,1) in('H','A','M');

select last_name, hire_date, to_char(hire_date,'fmDay') zi from employees order by zi;

select last_name, nvl(to_char(commission_pct),'fara_comision') comm  from employees;













/* pentru rulare scrie  @bd07.sql in consola*/


