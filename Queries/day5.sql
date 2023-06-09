--find the highest 14th salary
--list salary higgh to low without duplicate values
select distinct SALARY
from EMPLOYEES
order by SALARY desc;

--find the highest 14th salary(removing duplicate values)
select min(SALARY)
from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM < 15;

--find employee info who is making 14th highest salary
select *
from EMPLOYEES
where SALARY = (select min(SALARY)
                from (select distinct SALARY from EMPLOYEES order by SALARY desc)
                where ROWNUM < 15);