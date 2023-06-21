--Temp Table

--Create TempTable #temp_Employee
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)


SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)


--Insert data in TempTable from Table EmployeeSalary
INSERT INTO #temp_Employee
SELECT *
FROM SQL_Tutorial_Practice2.dbo.EmployeeSalary



--Drop Table Only when it is neccesary or when to run a Stored Procedure
DROP TABLE IF EXISTS #temp_Employee2
--Create new Temp Table #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar (50),
EmployeesPerJobr int,
AveAge int,
AvgSalary int
)


SELECT *
FROM #Temp_Employee2

INSERT INTO #Temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(salary)
FROM SQL_Tutorial_Practice2.dbo.EmployeeDemographics emp
JOIN SQL_Tutorial_Practice2.dbo.EmployeeSalary sal
ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle


SELECT *
FROM #Temp_Employee2

