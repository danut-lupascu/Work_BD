/*Capitolul 8 bd*/


select last_name, department_name 
from employees, departments;
select employees.employee_id,employees.last_name,employees.department_id,departments.department_id,departments.location_id 
from employees,departments 
where employees.department_id=departments.department_id;
SELECT employees.employee_id, employees.last_name, departments.location_id 
FROM employees, departments 
WHERE employees.department_id=departments.department_id 
AND Last_name='Matos';


SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id 
FROM employees e, departments d 
WHERE e.department_id=d.department_id;  
SELECT e.employee_id, e.last_name, e.department_id, d.department_id, d.location_id, l.city
FROM employees e, departments d, locations l 
WHERE e.department_id=d.department_id 
and d.location_id=l.location_id;


SELECT e.last_name, e.salary, j.grade_level 
FROM employees e, job_grades j 
WHERE e.salary
between j.lowest_sal
and j.highest_sal;  

SELECT e.last_name, e.department_id, d.department_name 
FROM employees e, departments d 
WHERE e.department_id(+) = d.department_id;

SELECT e.last_name, e.department_id, d.department_name 
FROM employees e, departments d 
WHERE e.department_id = d.department_id(+);

SELECT worker.last_name || ' works for '|| manager.last_name 
FROM employees worker, employees manager 
WHERE worker.manager_id = manager.employee_id;


select w.last_name nume_ang, m.last_name nume_sef 
from employees w,employees m
where w.manager_id=m.employee_id; 

select e.last_name, e.department_id, d.department_name
from employees e, departments d
where e.department_id=d.department_id;

select  distinct(job_id) job, department_name
from employees e, departments d
where e.department_id=d.department_id
and e.department_id in (30,90);

select e.last_name,d.department_name,l.location_id,l.city
from employees e,departments d, locations l
where e.department_id=d.department_id
and d.location_id=l.location_id
and commission_pct is not null;


select e.last_name, e.job_id, e.department_id,d.department_name
from employees e,departments d,locations l
where e.department_id=d.department_id and d.location_id=l.location_id
and upper(city)='TORONTO';

select a.last_name nume_ang,
 a.employee_id marca_ang,
 s.last_name nume_sef,
 s.employee_id marca_sef
from employees a, employees s
where a.manager_id=s.employee_id;

select e.employee_id id_ang, e.last_name nume_ang, c.employee_id id_coleg, c.last_name nume_coleg
from employees c, employees e
where e.department_id=c.department_id
and e.employee_id<>c.employee_id;

select last_name, job_id, department_name, salary, grade_level
from employees e, departments d, job_grades j
where e.department_id=d.department_id 
and salary between lowest_sal and highest_sal;

select last_name, hire_date
from employees 
where hire_date>(select hire_date from employees where upper(last_name)='DAVIES');

select e.last_name nume_ang, e.hire_date data_ang, s.last_name nume_sef, s.hire_date data_sef
from employees e, employees s
where e.manager_id=s.employee_id
and e.hire_date<s.hire_date;

select last_name, lpad('_',round(salary/100,0),'*')
from employees
order by salary desc;





