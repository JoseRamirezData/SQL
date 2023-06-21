--CTE

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(gender) OVER (PARTITION by Gender) as TotalGender,
AVG(Salary) OVER (PARTITION by Gender) as AvgSalary
FROM SQL_Tutorial_Practice2.dbo.EmployeeDemographics emp
JOIN SQL_Tutorial_Practice2.dbo.EmployeeSalary sal
ON emp.EmployeeID=sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary 
FROM CTE_Employee




