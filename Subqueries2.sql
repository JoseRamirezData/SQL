
--Subqueries

SELECT *
FROM EmployeeSalary

--Subquery in the Select
SELECT EmployeeID, Salary,(SELECT AVG(Salary) FROM EmployeeSalary) AS AvgAllSalary
FROM EmployeeSalary

--Subquery with Partition By
SELECT EmployeeID, Salary,AVG(Salary)  OVER () AS AvgAllSalary
FROM EmployeeSalary

--Subquery in From
SELECT a.EmployeeID, a.AvgAllSalary
FROM ( 
	SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AvgAllSalary
	FROM EmployeeSalary) a
	   	 
--Subquery in Where
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
					SELECT EmployeeID
					FROM EmployeeDemographics
					WHERE Age > 30)