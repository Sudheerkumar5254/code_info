

select dob,year(convert(date,Dob)) as yr from customer;
SELECT dob, YEAR(CONVERT(date, dob)) AS yr FROM customer;

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='customer';
ALTER TABLE customer
ALTER COLUMN dob date;

select Customer_id,
Customer_name,
Customer_SSN,
City,
Market,
Town,
try_convert(date,dob) as DOB
into trail
from customer;
select * from customer;
select *, 12000 as salary into trail1
from trail;
update trail1
set Market='' where Town='Kyabram';
select * from trail1;
SELECT COALESCE(market,city,town) AS column_alias FROM trail;
SELECT COALESCE(market,'bfhg') AS colmn FROM trail1;

select dob,dateadd(month,-25,dob) as previous_mon,
dateadd(day,22,dob) as days,
datename(month,dob) from trail;

select coalesce(dob, '2024-04-15') as xyz from trail;

select column_name,data_type from INFORMATION_SCHEMA.columns where TABLE_NAME='trail';


SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customer';

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customer';

select * from trail1

select customer_id,salary,
lag(salary,1,0) over(order by customer_id) as pvs,
salary-lag(salary,1,0) over(order by customer_id) as df from trail1;

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MiddleName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2),
    Experience INT,
    DateOfBirth DATE
);

INSERT INTO Employees (ID, FirstName, MiddleName, LastName, Age, Salary, Experience, DateOfBirth)
VALUES 
    (1, 'John', 'Michael', 'Doe', 35, 60000.00, 10, '1987-05-15'),
    (2, 'Jane', NULL, 'Smith', 28, 55000.00, 5, '1994-10-20'),
    (3, 'Alice', 'Anne', 'Johnson', 42, 70000.00, 15, '1979-03-12'),
    (4, 'Robert', NULL, 'Williams', 45, 75000.00, 20, '1976-12-28'),
    (5, 'Emily', 'Rose', 'Taylor', 31, 62000.00, 8, '1990-07-08');


	select * from employees;

	select middlename, coalesce(null,2,middlename,'xyz')as middle,
	
	firstname + ' '+ coalesce(middlename,'xyz') +' '+ lastname as fullname from employees;







