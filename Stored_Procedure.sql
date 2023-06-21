--STORED PROCEDURE

--Create Stored Procedure
CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

--Execute Stored Procedure
EXEC TEST


--Create TempTable with Stored Procedure 
CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_Employee(
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

EXEC Temp_Employee

----Create Stored Procedure with TempTable
CREATE TABLE #temp_Employee2(
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(salary)
FROM SQL_Tutorial_Practice2.dbo.EmployeeDemographics emp
JOIN SQL_Tutorial_Practice2.dbo.EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle


SELECT *
FROM #temp_Employee2


CREATE PROCEDURE Temp_Employee2
AS
SELECT *
FROM #temp_Employee2


EXEC Temp_Employee2

