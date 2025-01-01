create database booth;

use booth;

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

SELECT * FROM COMPANY ;
    
alter table COMPANY drop EMP_PHONE_NO;
alter table COMPANY drop EMP_COMPANY_CITY;
alter table COMPANY drop EMP_COMPANY_NAME;
alter table COMPANY drop EMP_DOB;
alter table COMPANY drop EMP_SALARY;

CREATE TABLE CUSTOMER (
    ID INT, 
    FIRST_NAME VARCHAR(15), 
    LAST_NAME VARCHAR(15), 
    SALARY bigint, 
    PHONE_NO bigint, 
    CITY VARCHAR(15) 
);

INSERT INTO CUSTOMER ( ID, FIRST_NAME, LAST_NAME, SALARY, PHONE_NO, CITY ) VALUES
( 1, 'Alice', 'MOHAMMAD', 9000, 8374958574, 'RAMPURU'),
( 2, 'Bob', 'MAHESH', 29435, 8354658573, 'RAMAVARAM'),
( 3, 'Henry', 'YUVARAJ', 15000,9786756445, 'YALLAPURU'),
( 4, 'Diana', 'GOUDA', 18905, 7964458574, 'KAGAL'),
( 5, 'Grace', 'MAHA', 24537, 8374563487, 'BALLARI');

select * from customer;

-- INNER JOIN 
select * from COMPANY inner join customer on COMPANY.EMP_FIRST_NAME = customer.first_name;
select * from COMPANY inner join customer on COMPANY.EMP_ID = customer.ID;

-- left join
select * from company left join customer on company.EMP_FIRST_NAME = customer.first_name;
select * from COMPANY LEFT join customer on COMPANY.EMP_ID = customer.ID;


---- RIGHT JOIN
SELECT * FROM company RIGHT JOIN CUSTOMER ON company.EMP_FIRST_NAME = CUSTOMER.FIRST_NAME;
select * from COMPANY RIGHT join customer on COMPANY.EMP_ID = customer.ID;

------ FULL JOIN
select * from company left join customer on company.EMP_FIRST_NAME = customer.first_name
UNION
select * from company RIGHT join customer on company.EMP_FIRST_NAME = customer.first_name;

select * from COMPANY LEFT join customer on COMPANY.EMP_ID = customer.ID
UNION
select * from COMPANY RIGHT join customer on COMPANY.EMP_ID = customer.ID;
