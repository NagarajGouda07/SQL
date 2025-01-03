CREATE DATABASE johnson;
USE JOHNSON;
SHOW databases;

CREATE TABLE COMPANY (
    EMP_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    EMP_FIRST_NAME VARCHAR(50) NOT NULL,
    EMP_LAST_NAME VARCHAR(50) NOT NULL,
    EMP_ADDRESS VARCHAR(100) NOT NULL,
    EMP_CITY VARCHAR(50) NOT NULL,
    EMP_SALARY BIGINT NOT NULL,
    EMP_DOB DATE NOT NULL,
    EMP_PHONE_NO VARCHAR(15) NOT NULL,
    EMP_COMPANY_NAME VARCHAR(100) NOT NULL,
    EMP_COMPANY_CITY VARCHAR(50) NOT NULL
);
SHOW TABLES;
ALTER TABLE COMPANY ADD COLUMN EMP_EMAIL_ID VARCHAR(20);
ALTER TABLE COMPANY ADD COLUMN YEAR VARCHAR(20);
ALTER TABLE COMPANY DROP COLUMN EMP_EMAIL_ID;
ALTER TABLE COMPANY DROP COLUMN YEAR;
ALTER TABLE COMPANY RENAME COLUMN EMP_COMPANY_NAME TO EMP_COMPANYNAME;
ALTER TABLE COMPANY RENAME COLUMN EMP_COMPANYNAME TO EMP_COMPANY_NAME;
CREATE INDEX idx_EMP_FIRST_NAME ON COMPANY (EMP_FIRST_NAME);


INSERT INTO COMPANY (EMP_FIRST_NAME, EMP_LAST_NAME, EMP_ADDRESS, EMP_CITY, EMP_SALARY, EMP_DOB, EMP_PHONE_NO, EMP_COMPANY_NAME, EMP_COMPANY_CITY) VALUES 
('Alice', 'Johnson', '789 Pine St', 'New York', 90000, '1982-07-19', '1122334455', 'AlphaTech', 'New York'),
('Bob', 'Williams', '101 Maple Dr', 'Chicago', 65000, '1991-11-02', '2233445566', 'BetaCorp', 'Chicago'),
('Charlie', 'Brown', '234 Elm St', 'Houston', 70000, '1985-02-13', '3344556677', 'Gamma Inc', 'Houston'),
('Diana', 'Prince', '345 Cedar Ln', 'Phoenix', 80000, '1988-08-23', '4455667788', 'Delta LLC', 'Phoenix'),
('Eve', 'Adams', '567 Birch Blvd', 'San Francisco', 95000, '1992-12-12', '5566778899', 'Epsilon Co', 'San Francisco'),
('Frank', 'Miller', '678 Oak St', 'Los Angeles', 72000, '1979-05-06', '6677889900', 'Zeta Ltd', 'Los Angeles'),
('Grace', 'Hopper', '789 Walnut Rd', 'Seattle', 98000, '1980-10-14', '7788990011', 'Theta Solutions', 'Seattle'),
('Henry', 'Ford', '890 Chestnut Ave', 'Boston', 88000, '1994-01-25', '8899001122', 'Iota Enterprises', 'Boston'),
('Ivy', 'Lee', '901 Poplar St', 'Denver', 77000, '1987-03-30', '9900112233', 'Kappa Industries', 'Denver'),
('Jack', 'Davis', '123 Willow Ct', 'Miami', 62000, '1993-09-10', '1000112233', 'Lambda Systems', 'Miami');


SELECT * FROM COMPANY;
-- THIS IS A ALL COLUMNS COUNTS IN TABLES
SELECT COUNT(*) FROM COMPANY;
SELECT MAX(EMP_SALARY) AS MAX_EMP_SALARY FROM COMPANY; 
SELECT MIN(EMP_SALARY) AS MIN_EMP_SALARY FROM COMPANY;
SELECT AVG(EMP_SALARY) AS AVG_EMP_SALARY FROM COMPANY;
SELECT SUM(EMP_SALARY) AS SUM_EMP_SALARY FROM COMPANY;
SELECT MAX(EMP_SALARY) AS MAX_EMP_SALARY, MIN(EMP_SALARY) AS MIN_EMP_SALARY,
AVG(EMP_SALARY) AS AVG_EMP_SALARY, SUM(EMP_SALARY) AS SUM_EMP_SALARY FROM COMPANY;
SELECT STDDEV(EMP_SALARY) AS STDDEV_EMP_SALARY FROM COMPANY;
SELECT VARIANCE(EMP_SALARY) AS VARIANCE_EMP_SALARY FROM COMPANY;
SELECT EMP_FIRST_NAME, GROUP_CONCAT(EMP_SALARY SEPARATOR ', ') AS COMPANY FROM COMPANY GROUP BY EMP_SALARY;


 
SELECT EMP_ADDRESS, EMP_CITY FROM COMPANY;
SELECT  EMP_ID, EMP_FIRST_NAME, EMP_COMPANY_NAME, EMP_DOB, EMP_SALARY FROM COMPANY;

--- UPDATE
UPDATE COMPANY SET EMP_LAST_NAME = 'AGOO' WHERE EMP_CITY = 'CHICAGO';
delete FROM  COMPANY WHERE EMP_LAST_NAME = 'AGOO'; -- ROW FULL DELECTED...

------- WHERE CLAUSE
SELECT * FROM COMPANY WHERE EMP_SALARY > 70000;
SELECT * FROM COMPANY WHERE EMP_SALARY < 50000;
SELECT * FROM COMPANY WHERE EMP_SALARY = 90000;

------ ORDER BY CLAUSE
SELECT * FROM COMPANY ORDER BY EMP_SALARY;
SELECT * FROM COMPANY ORDER BY EMP_FIRST_NAME DESC;
SELECT *FROM COMPANY ORDER BY EMP_CITY;
SELECT *FROM COMPANY ORDER BY EMP_ADDRESS;

------ HAVING CLAUSE
SELECT EMP_ID, SUM(EMP_SALARY) AS EMP_MONAY FROM COMPANY GROUP BY EMP_ID HAVING SUM(EMP_SALARY) > 80000;
SELECT EMP_ID, SUM(EMP_SALARY) AS EMP_SA FROM COMPANY GROUP BY EMP_ID HAVING SUM(EMP_SALARY) < 70000;

------ IN COMMANDS
SELECT * FROM COMPANY WHERE EMP_FIRST_NAME IN ('BOB', 'CHARLIE', 'EVE', 'FRANK');
---- DISTINT 
SELECT DISTINCT EMP_ADDRESS FROM COMPANY;
SELECT DISTINCT EMP_PHONE_NO FROM COMPANY;

------- LIMIT & OFFSET
SELECT * FROM COMPANY ORDER BY EMP_ID LIMIT 5;
SELECT * FROM COMPANY ORDER BY EMP_ID LIMIT 10 OFFSET 0;
SELECT * FROM COMPANY ORDER BY EMP_ID LIMIT 10 OFFSET 5;
SELECT * FROM CUSTOMER ORDER BY ID LIMIT 15 OFFSET 10;


CREATE TABLE CUSTOMER (
    ID INT, 
    FIRST_NAME VARCHAR(15), 
    LAST_NAME VARCHAR(15), 
    SALARY bigint, 
    PHONE_NO bigint, 
    CITY VARCHAR(15) 
);

INSERT INTO CUSTOMER ( ID, FIRST_NAME, LAST_NAME, SALARY, PHONE_NO, CITY ) VALUES
( 1, 'ZAID', 'MOHAMMAD', 9000, 8374958574, 'RAMPURU'),
( 2, 'NAGA', 'MAHESH', 29435, 8354658573, 'RAMAVARAM'),
( 3, 'NAIK', 'YUVARAJ', 15000,9786756445, 'YALLAPURU'),
( 4, 'RAJ', 'GOUDA', 18905, 7964458574, 'KAGAL'),
( 5, 'MARYA', 'MAHA', 24537, 8374563487, 'BALLARI'),
( 6, 'GOVID', 'SURESH', 9000, 8374958574, 'PURU'),
( 7, 'ZD', 'MOHA', 16000, 8374954670, 'UK'),
( 8, 'GURU', 'HAMMAD', 89900, 87934958574, 'DODDI'),
( 9, 'RAHU', 'FUJI', 18090, 8374958574, 'RAU'),
( 10, 'ZAI', 'MOHAD', 9000, 7674958574, 'DINNE'),
( 11, 'NAM', 'MOH', 19000, 8374958454, 'RAJESHU'),
( 12, 'RUMU', 'HAJI', 150080, 8974958574, 'RAGURU'),
( 13, 'YULI', 'MD', 9000, 8374958564, 'RAMAUR'),
( 14, 'KOLI', 'SACHINE', 67000, 8374958567, 'RAJASTAN'),
( 15, 'GURULI', 'BUHRU', 29000, 6363958574, 'HACHOLI');

SELECT * FROM CUSTOMER;

---- ANY COMMANDS THISCOMMAND NOT UNDERSTANDING...
SELECT EMP_FIRST_NAME, EMP_SALARY FROM COMPANY 
	WHERE EMP_SALARY > ANY (
    SELECT SALARY
    FROM CUSTOMER
    WHERE LAST_NAME = 'GOUDA'
);

SELECT EMP_FIRST_NAME, EMP_SALARY FROM COMPANY 
	WHERE EMP_SALARY = ANY (
    SELECT SALARY
    FROM CUSTOMER
    WHERE LAST_NAME = 'GOUDA'
);

SELECT EMP_FIRST_NAME, EMP_SALARY FROM COMPANY 
	WHERE EMP_SALARY < ANY (
    SELECT SALARY
    FROM CUSTOMER
    WHERE LAST_NAME = 'MOHAMMAD'
);

---- NOT NULL // IS NOT NULL COMMANDS
 SELECT * FROM CUSTOMER WHERE NOT FIRST_NAME = 'NAGA';
SELECT * FROM COMPANY WHERE NOT EMP_FIRST_NAME = 'EVE';
SELECT * FROM COMPANY WHERE NOT EMP_SALARY = 90000;
SELECT * FROM COMPANY WHERE EMP_FIRST_NAME IS NOT NULL;

------- AND // OR COMMANDS
SELECT * FROM COMPANY WHERE EMP_FIRST_NAME = 'HENRY' AND EMP_SALARY = 88000;
SELECT * FROM COMPANY WHERE EMP_LAST_NAME = 'BROWN' AND EMP_COMPANY_NAME = 'GAMMA INC';
SELECT * FROM COMPANY WHERE EMP_ID = 7 OR EMP_ADDRESS = '101 MAPLE DR' OR EMP_DOB ='1993-09-10'; 


-- LIKE 
select * from CUSTOMER WHERE FIRST_NAME LIKE 'a%';
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%A';
SELECT * FROM CUSTOMER WHERE SALARY LIKE '%5';
SELECT * FROM CUSTOMER WHERE SALARY LIKE '9%';


------ UNION / UNION ALL
SELECT CITY FROM CUSTOMER UNION SELECT EMP_CITY FROM COMPANY  ORDER BY CITY;
SELECT CITY FROM CUSTOMER UNION SELECT EMP_CITY FROM COMPANY;
SELECT CITY FROM CUSTOMER UNION ALL SELECT EMP_CITY FROM COMPANY ORDER BY CITY;

------ JOINS COMMANDS

--- INNER JOIN
SELECT * FROM COMPANY AS P INNER JOIN CUSTOMER AS M ON P.EMP_ID = M.ID;
SELECT * FROM CUSTOMER AS M INNER JOIN COMPANY AS P ON M.ID = P.EMP_ID;

---- LEFT JOIN
SELECT * FROM CUSTOMER AS M LEFT JOIN COMPANY AS P ON M.ID = P.EMP_ID;
SELECT * FROM COMPANY AS P LEFT JOIN CUSTOMER AS M ON P.EMP_ID = M.ID;
SELECT * FROM CUSTOMER AS M LEFT JOIN COMPANY AS P ON M.ID = P.EMP_ID WHERE M.ID IS NULL;
SELECT * FROM CUSTOMER AS M LEFT JOIN COMPANY AS P ON M.ID = P.EMP_ID WHERE M.ID IS NOT NULL;
SELECT * FROM COMPANY AS P LEFT JOIN CUSTOMER AS M ON P.EMP_ID = M.ID WHERE M.ID IS NOT NULL;



----- RIGHT JOIN
SELECT * FROM CUSTOMER AS M RIGHT JOIN COMPANY AS P ON M.ID = P.EMP_ID;
SELECT * FROM COMPANY AS P RIGHT JOIN CUSTOMER AS M ON P.EMP_ID = M.ID;
SELECT * FROM CUSTOMER AS M RIGHT JOIN COMPANY AS P ON M.ID = P.EMP_ID WHERE M.ID IS NULL;

SELECT * FROM CUSTOMER AS M FULL outer JOIN COMPANY AS P ON M.ID = P.EMP_ID;

----- CROSS JOIN
SELECT * FROM CUSTOMER CROSS JOIN COMPANY;
SELECT * FROM COMPANY CROSS JOIN CUSTOMER;











