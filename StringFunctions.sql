/*
String Functions: TRIM, LTRIM, RTRIM, Replace Substring, Fuzzy Matching, Upper, Lower
*/

CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
Firstname varchar(50),
LastName varchar (50))


INSERT INTO EmployeeErrors VALUES
('1001  ','Jimbo','Halbert'),
('  1002','Pamela','Beasely'),
('1005','TOby','Flenderson - Fired')

SELECT * FROM EmployeeErrors

--Using Trim, LTRIM, RTRIM
SELECT EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) as IDDTRIM
FROM EmployeeErrors


--Using Replace
SELECT LastName, REPLACE(LastName, ' - Fired', '') AS LastNameFixed
FROM EmployeeErrors

--Using Substring 
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

-- Fuzzy Matching
SELECT err.FirstName, SUBSTRING(err.FirstName,1,3),dem.FirstName, SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

--Using UPPER and LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

