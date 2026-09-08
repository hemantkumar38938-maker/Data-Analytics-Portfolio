/* ============================================================
   PRACTICE FILE: AGGREGATE FUNCTIONS & TEXT FUNCTIONS
   Table: Products
   Instructions: Write the SQL query below each question.
   ============================================================ */


/* ------------------------------------------------------------
   STEP 1: CREATE TABLE
   ------------------------------------------------------------ */
create database practice;
use practice;



CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    city VARCHAR(50),
    price INT,
    description VARCHAR(100)
);


/* ------------------------------------------------------------
   STEP 2: INSERT DATA
   ------------------------------------------------------------ */

INSERT INTO Products VALUES
(1, 'wireless mouse', 'Electronics', 'Bangalore', 799, 'compact wireless mouse'),
(2, 'Office Chair', 'Furniture', 'Delhi', 4500, 'ergonomic office chair'),
(3, 'BLUETOOTH SPEAKER', 'Electronics', 'Bangalore', 2200, 'portable bluetooth speaker'),
(4, 'Study Table', 'Furniture', 'Mumbai', 3800, 'wooden study table'),
(5, 'laptop stand', 'Electronics', 'Pune', 1200, 'adjustable laptop stand'),
(6, 'Bookshelf', 'Furniture', 'Delhi', 3200, 'wall mounted bookshelf'),
(7, 'Table Lamp', 'Electronics', 'Mumbai', 950, 'LED table lamp'),
(8, '  Yoga Mat  ', 'Fitness', 'Bangalore', 600, 'non-slip yoga mat');


/* ============================================================
   SECTION A: AGGREGATE FUNCTIONS
   ============================================================ */

-- Q1. Find the total number of products.
select count(product_id) as Total_products from products;

-- Q2. Find the total value of all products (sum of prices).

Select SUM(price) As total_value From Products;
-- Q3. Find the average price of products.

select avg(price) as avg_price from products;
-- Q4. Find the most expensive and least expensive product price.
Select MAX(price) As max_price, MIN(price) As min_price From Products;


-- Q5. Find how many products exist in each category.
 Select category, COUNT(product_id) As product_count 
From Products 
Group by category;


-- Q6. Find the average price per city.
select city, AVG(price) as avg_price_per_city 
From Products 
group by city;

-- Q7. Find categories where the average price is more than 2000.
select category,avg(price) as avg_price from products
group by category
having avg_price>2000;

-- Q8. Find the total price of products per city, sorted from highest to lowest.
select city,sum(price) as Total_price
from products
group by city
order by Total_price;

-- Q9. Find the number of distinct cities the products are available in.
select distinct(city) as distincity_cities from products;


/* ============================================================
   SECTION B: TEXT FUNCTIONS
   ============================================================ */

-- Q1. Display all product names in uppercase and lowercase.
select product_name,
    UPPER(product_name) as upper_name,
    LOWER(product_name) as lower_name
FROM Products;


-- Q2. Remove the extra spaces from the product_name column and display the cleaned result.
select 
    product_name,
    TRIM(product_name) as cleaned_name
from Products;


-- Q3. Find the length of each product_name (after removing spaces).

select product_name,LENGTH(TRIM(product_name)) as name_length
from Products;
-- Q4. Extract the first 5 characters of each description.
select description,
    SUBSTRING(description, 1, 5) as first_5_chars
from Products;

-- Q5. Combine product_name and category into a single column separated by a hyphen.
select concat(trim(product_name), '--',category) as new_name from products;

-- Q6. Replace the word 'table' with 'desk' in the description column.
select description ,replace(description, "table", "desk") as new_description from products;

-- Q7. Convert each product_name into proper case (first letter capital, rest lowercase).
select product_name,concat(UPPER(SUBSTRING(TRIM(product_name), 1, 1)), 
LOWER(SUBSTRING(TRIM(product_name), 2))
) as proper_case_name
from Products;

-- Q8. Find all products whose description contains the word 'wireless'.
select description from products
where description like "%wireless%";

-- Q9. Find all products whose product_name starts with the letter 'B' (case-insensitive).
select product_name from Products 
where LOWER(TRIM(product_name)) like 'b%';


