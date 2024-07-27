CREATE TABLE bank_details (
    account_holder VARCHAR(255), account_number BIGINT, bank_name VARCHAR(255), branch_code INT, is_active BOOLEAN);
ALTER TABLE bank_details
ADD COLUMN type_of_account VARCHAR(255),
ADD COLUMN account_balance BIGINT,
ADD COLUMN account_currency VARCHAR(255),
ADD COLUMN date_opened DATE,
ADD COLUMN phone_number VARCHAR(255);

ALTER TABLE bank_details
RENAME COLUMN type_of_account TO account_type,
RENAME COLUMN account_balance TO balance,
RENAME COLUMN account_currency TO currency,
RENAME COLUMN date_opened TO opened_date,
RENAME COLUMN phone_number TO contact_number;

INSERT INTO bank_details (account_holder, account_number, bank_name, branch_code, is_active, account_type, balance, currency, opened_date, contact_number)
VALUES
('Ravi Kumar', 86948372602, 'State Bank of India', 101, true, 'Checking', 50000, 'INR', '2020-01-01', '9876543210'),
('Anita Shetty', 987654321098, 'Canara Bank', 102, true, 'Savings', 150000, 'INR', '2019-02-02', '8765432109'),
('Vijay Kumar', 34895628465, 'Karnataka Bank', 103, true, 'Checking', 250000, 'INR', '2018-03-03', '7654321098'),
('Sunita Rao', 97584736323, 'Syndicate Bank', 104, true, 'Savings', 350000, 'INR', '2017-04-04', '6543210987'),
('Rakesh Gowda', 19505194205, 'Vijaya Bank', 105, true, 'Checking', 450000, 'INR', '2016-05-05', '5432109876'),
('Lakshmi Hegde', 86573085345, 'Corporation Bank', 106, true, 'Savings', 550000, 'INR', '2015-06-06', '4321098765'),
('Manoj Desai', 7685940334, 'Axis Bank', 107, true, 'Checking', 650000, 'INR', '2014-07-07', '3210987654'),
('Deepa Shenoy', 7685940365, 'HDFC Bank', 108, true, 'Savings', 750000, 'INR', '2013-08-08', '2109876543'),
('Rajesh Nair', 55675890432, 'ICICI Bank', 109, true, 'Checking', 850000, 'INR', '2012-09-09', '1098765432'),
('Priya Reddy', 634353637333, 'Union Bank', 110, true, 'Savings', 950000, 'INR', '2011-10-10', '0987654321');

UPDATE bank_details SET balance = 60000 WHERE account_holder = 'Ravi Kumar';
UPDATE bank_details SET bank_name = 'IDBI Bank' WHERE account_holder = 'Anita Shetty';
UPDATE bank_details SET branch_code = 202 WHERE account_holder = 'Vijay Kumar';
UPDATE bank_details SET contact_number = '9876543211' WHERE account_holder = 'Sunita Rao';
UPDATE bank_details SET account_type = 'Business' WHERE account_holder = 'Rakesh Gowda';

DELETE FROM bank_details WHERE account_holder = 'Priya Reddy';
DELETE FROM bank_details WHERE bank_name = 'Vijaya Bank';
DELETE FROM bank_details WHERE branch_code = 106;

SELECT * FROM bank_details WHERE balance > 500000 AND is_active = true;

SELECT * FROM bank_details WHERE bank_name IN ('Canara Bank', 'Karnataka Bank', 'Axis Bank');

SELECT * FROM bank_details