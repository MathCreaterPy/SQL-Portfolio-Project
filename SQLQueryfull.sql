											--Table 1 Query:
--Create Table EmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

----Table 2 Query:
--Create Table EmployeeSalary 
--(EmployeeID int, 
--JobTitle varchar(50), 
--Salary int
--)



												----Table 1 Insert:
--Insert into EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

----Table 2 Insert:
--Insert Into EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)


----Table 1 Insert:
--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

----Table 3 Query:
--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

----Table 3 Insert:
--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT*
--FROM SQL_tutorial.dbo.EmployeeDemographics

--SELECT*
--FROM SQL_tutorial.dbo.EmployeeSalary



				/*	Inner Joins, Full/Left/Right Outer Joins	*/
--SELECT*
--FROM SQL_tutorial.dbo.EmployeeDemographics

--SELECT*
--FROM SQL_tutorial.dbo.EmployeeSalary


--SELECT *
--FROM dbo.EmployeeDemographics
--Inner Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

--SELECT *
--FROM dbo.EmployeeDemographics
--FULL Outer Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

--SELECT *
--FROM dbo.EmployeeDemographics
--LEFT Outer Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID


--SELECT *
--FROM dbo.EmployeeDemographics
--Right Outer Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
--FROM SQL_tutorial.dbo.EmployeeDemographics
--Inner Join SQL_tutorial.dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

--WHERE FirstName<> 'Michael'
--ORDER BY Salary DESC


--SELECT JobTitle, AVG(Salary)
--FROM SQL_tutorial.dbo.EmployeeDemographics
--Inner Join SQL_tutorial.dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

--WHERE JobTitle='Salesman'

--GROUP BY JobTitle


						/*        Union, Union ALL       */

--SELECT*
--FROM SQL_tutorial.dbo.EmployeeDemographics
--UNION All
--SELECT*
--FROM SQL_tutorial.dbo.WareHouseEmployeeDemographics
--ORDER BY EmployeeID

--SELECT*
--FROM SQL_tutorial.dbo.EmployeeDemographics
--Full Outer Join SQL_tutorial.dbo.WareHouseEmployeeDemographics
--ON EmployeeDemographics.EmployeeID= WareHouseEmployeeDemographics.EmployeeID

--SELECT EmployeeID, FirstName, Age
--FROM SQL_tutorial.dbo.EmployeeDemographics
--UNION 
--SELECT EmployeeID, JobTitle, Salary
--FROM SQL_tutorial.dbo.EmployeeSalary
--ORDER BY EmployeeID

								/*	Case Statement	*/
--SELECT FirstName, LastName, Age,
--CASE
--	WHEN Age>30 THEN 'OLD'
--	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--	ELSE 'Baby'
--	END

--FROM SQL_tutorial.dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age 


--SELECT FirstName, LastName, JobTitle,  Salary,
--CASE
--	WHEN JobTitle='Salesman' THEN Salary+(Salary *.10)
--	WHEN JobTitle='Accountant' THEN Salary+(Salary *.05)
--	WHEN JobTitle='HR' THEN Salary+(Salary *.000001)
--	ELSE Salary + (Salary * .03)
--END AS SalaryAfterRaise

--FROM dbo.EmployeeDemographics
--Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID




							/*	Having Clause		*/
--SELECT JobTitle, AVG (Salary)
--FROM dbo.EmployeeDemographics
--Join dbo.EmployeeSalary
--   ON EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING AVG(Salary)>45000
--ORDER BY AVG(Salary)


						/* Updating/ Deleting Data	*/

--SELECT *
--FROM dbo.EmployeeDemographics

--UPDATE dbo.EmployeeDemographics
--SET EmployeeID=1012
--WHERE FirstName= 'Holly' AND LastName='Flax'

--SELECT *
--FROM dbo.EmployeeDemographics

--UPDATE dbo.EmployeeDemographics
--SET Age= 31, Gender ='Female'
--WHERE FirstName= 'Holly' AND LastName='Flax'


--DELETE FROM dbo.EmployeeDemographics

--WHERE EmployeeID=1005

--SELECT *
--FROM dbo.EmployeeDemographics


						--/* Partition By	--*/

--SELECT FirstName, LastName, Gender, Salary, 
--	COUNT(Gender) OVER (PARTITION BY Gender) as TOTALGender
--FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal
-- ON dem.EmployeeID=sal.EmployeeID


				 /* CTEs (Common Table Expression)	 */

-- WITH CTE_Employee as 
-- (SELECT FirstName, LastName, Gender, Salary, 
--	COUNT(Gender) OVER (PARTITION BY Gender) as TOTALGender,
--	AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM dbo.EmployeeDemographics dem
-- JOIN dbo.EmployeeSalary sal
--	ON dem.EmployeeID=sal.EmployeeID
-- WHERE Salary >'45000'
-- )
-- Select *
-- FROM CTE_Employee

						/* Temp Tables	*/
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select*
FROM #temp_Employee

INSERT INTO #temp_Employee VaLUES
(1001, 'HR', 45000)


INSERT INTO #temp_Employee
SELECT *
FROM EmployeeSalary


DROP TABLE IF EXISTS #Temp_Employee1
CREATE TABLE #Temp_Employee1(
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSAlary int)

INSERT INTO #Temp_Employee1
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(salary)
FROM EmployeeDemographics dem
 JOIN EmployeeSalary sal
	ON dem.EmployeeID=sal.EmployeeID
Group BY JobTitle

SELECT *
FROM #Temp_Employee1

/*Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower*/

Drop Table EmployeeErrors;

/* STRING FUNCTIONS*/

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005 ', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 

	



-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors

	/*	Today's Topic: Stored Procedures*/


CREATE PROCEDURE Temp_Employee
AS
DROP TABLE IF EXISTS #temp_employee
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #temp_employee
GO;




CREATE PROCEDURE Temp_Employee2 
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee3
Create table #temp_employee3 (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee3
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
where JobTitle = @JobTitle --- make sure to change this in this script from original above
group by JobTitle

Select * 
From #temp_employee3
GO;


exec Temp_Employee2 @jobtitle = 'Salesman'
exec Temp_Employee2 @jobtitle = 'Accountant'


	/* Today's Topic: Subqueries (in the Select, From, and Where Statement)	*/

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By
Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work
Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
order by EmployeeID


-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeeSalary) a
Order by a.EmployeeID


-- Subquery in Where


Select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
	Select EmployeeID 
	From EmployeeDemographics
	where Age > 30)
	
MOST IMPORTANT TOPIC of SQL:
1. JOINS
2. STORED PROCEDURES
3. CASE STATEMENT
4. CTE
