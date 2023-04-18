select * from SCRUMTEAM;

--adding new column
ALTER TABLE  SCRUMTEAM ADD salary INTEGER;

--update existing employees salary

UPDATE SCRUMTEAM
SET SCRUMTEAM.salary=100000
WHERE EMP_ID=1;

UPDATE SCRUMTEAM
SET SCRUMTEAM.salary=90000
WHERE EMP_ID=2;

UPDATE SCRUMTEAM
SET SCRUMTEAM.salary=120000
WHERE EMP_ID=3;

UPDATE SCRUMTEAM
SET SCRUMTEAM.salary=100000
WHERE EMP_ID=4;

--rename the column
ALTER TABLE SCRUMTEAM RENAME COLUMN salary TO annual_salary;

--delete drop column
ALTER TABLE SCRUMTEAM DROP  COLUMN annual_salary;

--how to change table name?
ALTER TABLE SCRUMTEAM RENAME TO agileteam;

commit ;

--truncate, if we want to delete all data from the table , but still keep the data structure, we use truncate
TRUNCATE TABLE SCRUMTEAM;

--If we want to delete the table and data together
DROP TABLE SCRUMTEAM;