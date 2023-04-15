select COUNTRY_ID from COUNTRIES;

select EMPLOYEE_ID,START_DATE,END_DATE from JOB_HISTORY;

select  FIRST_NAME from EMPLOYEES;

select distinct FIRST_NAME from EMPLOYEES;

select FIRST_NAME from EMPLOYEES
where FIRST_NAME = 'David';

select EMPLOYEE_ID from EMPLOYEES
where EMPLOYEE_ID = 107;

select EMPLOYEE_ID from JOB_HISTORY
where EMPLOYEE_ID > 150;

select  FIRST_NAME, HIRE_DATE from EMPLOYEES
where EMPLOYEE_ID <> 111;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY >= 5000 and SALARY <= 10000;

select  FIRST_NAME,SALARY from EMPLOYEES
where SALARY between  5000 and 10000;

select * from EMPLOYEES
where EMPLOYEE_ID = 135 or EMPLOYEE_ID = 176 or EMPLOYEE_ID = 154 or EMPLOYEE_ID = 129;

select * from EMPLOYEES
where EMPLOYEE_ID in (135,176,154,129);

select CITY from  LOCATIONS
where COUNTRY_ID in ('IT','US','UK');

--get me all info who is working as IT_PROG or SA_REP
select  * from  EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

--how many employee are working as IT_PROG or SA_REP
select count(*)  from  EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');

--how many employess making more than 8000
select count(*) from EMPLOYEES
where SALARY > 8000;

--how many unique first names we have ?
select  count(distinct FIRST_NAME) from EMPLOYEES;

--get me all employess information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc ;

--desc 9-0 Z-Z
--asc 0-9 A-Z

--get me all emp info order by alphabetical based on firstname
select * from EMPLOYEES
order by FIRST_NAME asc ;

--default order type is asc if you don't specify after column name
select * from EMPLOYEES
order by FIRST_NAME ;

--get me all employess whose first name starts with C
select * from EMPLOYEES
where FIRST_NAME like 'C%';

--get me 5 letter first names where the middle char is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--get me first name where second char is u
select * from EMPLOYEES
where FIRST_NAME like '_u%';

--find me minimum salary
select  min(SALARY) from EMPLOYEES;

--find me maximum salary
select max(SALARY) from EMPLOYEES;

--round
select round(avg(SALARY),2) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;

