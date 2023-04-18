/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DateType Constraints(optional)
        colName3 DataType Constraints,
        ...
 );
 */

CREATE TABLE ScrumTeam
(
    Emp_ID    INTEGER PRIMARY KEY,
    FirstName varchar(30) not null,
    LastName  varchar(30),
    JobTitle  varchar(20)
);

select * from SCRUMTEAM;

/*
 INSERT INTO tableName(column1, column2,...)
 VALUES (value1, value2, ....);
 */

INSERT INTO ScrumTeam(emp_id, firstname, lastname, jobtitle)
VALUES (1,'Severus','Snape','Tester');

insert into ScrumTeam values (2,'Harold','Finch','Developer');
insert into ScrumTeam values (3,'Phoebe','Buffay','Scrummaster');
insert into ScrumTeam values (4,'Michael','Scofield','po');


--how to update data
/*
 UPDATE table_name
 SET column1= value1,
    column2 = value2, ...
 WHERE condition;
 */

UPDATE  ScrumTeam
SET LastName='Snape'
WHERE Emp_ID=1;

--Delete from table
/*
 DELETE FROM table_name
 WHERE condition;
 */

DELETE FROM ScrumTeam
WHERE Emp_ID=3;

commit ;

select * from SCRUMTEAM;

