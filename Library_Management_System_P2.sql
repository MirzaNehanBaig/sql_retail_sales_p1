-- Library Management System

-- Creating Branch Table

DROP TABLE IF EXISTS branch;
CREATE TABLE branch (
branch_id VARCHAR(10),
manager_id VARCHAR(10),
branch_address VARCHAR(55),
contact_no VARCHAR(10)
);

-- Creating Employees Table

DROP TABLE IF EXISTS employees;
CREATE TABLE Employees(
emp_id VARCHAR(10) PRIMARY KEY,
emp_name VARCHAR(25),
position VARCHAR(15),
salary INT,
branch_id VARCHAR(10)
);

-- Creating Books Table

DROP TABLE IF EXISTS books;
CREATE TABLE books (
isbn VARCHAR(25) PRIMARY KEY,
book_title VARCHAR(75),
category VARCHAR(20),
rental_price FLOAT ,
status VARCHAR(15),
author VARCHAR(35),
publisher VARCHAR(55)
);

-- Creating Members Table

DROP TABLE IF EXISTS members;
CREATE TABLE members (
member_id VARCHAR(10),
member_name VARCHAR(25),
member_address VARCHAR(75),
reg_date DATE
);

-- Creating issued_status Table

DROP TABLE IF EXISTS issued_status;
CREATE TABLE issued_status (
issued_id VARCHAR(10) PRIMARY KEY,
issued_member_id VARCHAR(10), -- FK
issued_book_name VARCHAR(75), -- FK
issued_date DATE,
issued_book_isbn VARCHAR(25), --FK
issued_emp_id VARCHAR(10) -- FK
);

-- Creating return_status Table

DROP TABLE IF EXISTS return_status;
CREATE TABLE return_status (
return_id VARCHAR(10) PRIMARY KEY,
issued_id VARCHAR(10),
return_book_name VARCHAR(75),
return_date DATE,
return_book_isbn VARCHAR(25)
);