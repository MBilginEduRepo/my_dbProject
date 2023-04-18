--find the highest 14th salary
select min(SALARY) from(select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 15;