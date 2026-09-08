create database CASESTATEMENT;
use CASESTATEMENT;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 0),
    disease VARCHAR(50),
    city VARCHAR(50),
    admission_date DATE,
    bill_amount DECIMAL(10,2) DEFAULT 0.00
);

INSERT INTO Patients VALUES
(1, 'Ravi Kumar', 45, 'Diabetes', 'Bangalore', '2026-05-01', 12000.00),
(2, 'Priya Sharma', 32, 'Fracture', 'Delhi', '2026-05-03', 8500.00),
(3, 'Aman Gupta', 60, 'Cardiac Issue', 'Mumbai', '2026-05-05', 45000.00),
(4, 'Sneha Iyer', 8, 'Fever', 'Chennai', '2026-05-06', 2000.00),
(5, 'Karan Mehta', 72, 'Cardiac Issue', 'Pune', '2026-05-08', 60000.00),
(6, 'Divya Nair', 25, 'Appendicitis', 'Delhi', '2026-05-09', 22000.00),
(7, 'Rohit Verma', 50, 'Diabetes', 'Mumbai', '2026-05-10', 9000.00),
(8, 'Anjali Singh', 15, 'Fracture', 'Bangalore', '2026-05-11', 5000.00);

select * from patients;

-- Case Statement
-- Categorize the patients by Age Group
select patient_name,Age,
case
when age<12 then "Child"
when age between 12 and 59 then "Adult"
Else "Senior Citizen"
end as "Age_group"
from patients
order by age asc;

-- Categorize patients by bill amount
-- Low(<5000),Medium(5000 and 20000),else High
-- find the number of high,medium and low bill amount patients 
select
case  
when bill_amount < 5000 THEN 'Low'
when bill_amount BETWEEN 5000 AND 20000 THEN 'Medium'
else 'High'
end as Bill_Category,
COUNT(*) as Patient_Count
from Patients
group by
case
when bill_amount < 5000 THEN 'Low'
when bill_amount BETWEEN 5000 AND 20000 THEN 'Medium'
else 'High'
end
order by Patient_Count DESC;


-- update the table
Set sql_safe_updates = 0;
# increase bill amount by 10% for all cardiac issue 
-- patients
update patients 
set bill_amount = bill_amount + Bill_amount*0.1
where disease = 'Cardiac Issue';

select * from patients;

#update the city to Hyderabad where patientid is 4

update patients
set city = "Hyderbad"
where patient_id = 4;

select * from patients;


 #Alter the table 
 -- Add a new Column
 Alter table patients Add column contact_number 
 varchar(30);
 
 -- modify an existing column's Data type/size 
 Alter table patients modify column patient_name
 varchar(100);


-- Rename column
Alter table patients Rename column city 
to patient_city;

-- Dropping a column 
Alter table patients Drop column contact_number;

-- Geant , Revoke
-- Create a user first (run as admin/root)
create user 'intern_user'@'localhost' IDENTIFIED by 'Intern@123';

-- grant SELECT and UPDATE privileges on the patients table only 
GRANT SELECT, UPDATE ON CASESTATEMENT.patients TO 'intern_user'@'localhost';

-- Grant SELECT and UPDATE privileges on the patients table only 
GRANT SELECT,UPDATE ON casestatement.* TO 'intern_user'@'localhost';

-- Grant all privileges on the entire database
Grant all privileges on casestatement.* to 'intern_user'@'localhost';

-- Revoke UPDATE privilege
REVOKE UPDATE ON casestatement.patients from 'intern_user'@'localhost';


 
