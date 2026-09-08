create database jons;
use jons;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    phone VARCHAR(15) UNIQUE
);

INSERT INTO Customers VALUES
(1, 'Ravi Kumar', 'Bangalore', '9876543210'),
(2, 'Priya Sharma', 'Delhi', '9876543211'),
(3, 'Aman Gupta', 'Mumbai', '9876543212'),
(4, 'Sneha Iyer', 'Chennai', '9876543213'),
(5, 'Karan Mehta', 'Pune', '9876543214'),
(6, 'Divya Nair', 'Delhi', '9876543215'),
(7, 'Rohit Verma', 'Mumbai', '9876543216'),
(8, 'Anjali Singh', 'Bangalore', '9876543217');

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20) NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0.00 CHECK (balance >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Accounts VALUES
(201, 1, 'Savings', 25000.00),
(202, 2, 'Current', 150000.00),
(203, 3, 'Savings', 8000.00),
(204, 4, 'Savings', 42000.00),
(205, 5, 'Current', 90000.00),
(206, 6, 'Savings', 15000.00),
(207, NULL, 'Savings', 5000.00),
(208, NULL, 'Current', 12000.00);

select * from customers;
select * from accounts;


#inner jon
select c .* ,  a .*
from Customers c
inner join 
Accounts a 
on c . customer_id = a . customer_id;


#left joins  (left table + common data)
select c .* ,  a .*
from Customers c
left join 
Accounts a 
on c . customer_id = a . customer_id;

#right join (Right table + common data)
select c .* ,  a .*
from Customers c
right join 
Accounts a 
on c . customer_id = a . customer_id;

#find the customers with no accounts.
select c.customer_id,c.customer_name
from Customers c left join Accounts a
on c.customer_id = a.customer_id
where a.customer_id is null;

#find accounts details with no assigned customers
select a.*
from Customers c 
right join Accounts a
on c.customer_id = a.customer_id
where c.customer_id is null;


