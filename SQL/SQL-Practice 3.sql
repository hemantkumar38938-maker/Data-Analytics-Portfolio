/* ============================================================
   PRACTICE ASSIGNMENT: CONSTRAINTS (PK, FK, NOT NULL, UNIQUE,
   CHECK, DEFAULT) ACROSS FOUR CONNECTED TABLES
   Scenario: Library Management System

   Tables and how they connect:
     Authors  --(author_id)-->  Books
     Books    --(book_id)-->    Transactions
     Members  --(member_id)-->  Transactions

   So Transactions is linked to BOTH Books and Members.
   ============================================================

   WHAT YOU NEED TO DO:
   1. Write the CREATE TABLE statement for each table below,
      following the constraint requirements given in the comments.
   2. Insert 10 rows of realistic data into EACH table.
   3. Create tables and insert data in this ORDER: Authors, Books,
      Members, Transactions (parent tables must exist and have
      data before child tables can reference them).
   4. Write the constraint-violation INSERT statements to test
      each constraint (they should fail when run).
   ============================================================ */


/* ------------------------------------------------------------
   TABLE 1: Authors  (Parent table)
   ------------------------------------------------------------
   1. author_id     -> uniquely identifies each author, cannot be empty
   2. author_name   -> cannot be left empty
   3. country        -> should default to 'India' if not specified
   4. birth_year     -> must only allow years between 1800 and 2015

   Write your CREATE TABLE statement below:
   ------------------------------------------------------------ */
Create Database LibraryDB;
use LibraryDB;

Create table Authors (
    author_id Int primary key,
    author_name varchar(100) Not Null,
    country varchar(50) Default 'India',
    birth_year Int Check (birth_year between 1800 and 2015)
);



/* Insert 10 rows into Authors.
   At least 2 rows should rely on the DEFAULT country. */
insert into Authors (author_id, author_name, country, birth_year)
values
(1, 'Asish Mohanty', 'India', 2000),
(2, 'Bikas Bisoyi ', 'India', 2005),
(3, 'Raajmeer Behera', 'India', 2006),
(4, 'Bapin Maharana', 'USA', 1999),
(5, 'Kaiblya Sir', 'England', 1965),
(6, 'Hemant', 'India', 2003),
(7, 'Shridhar patra', 'Russia', 1974),
(8, 'Akash Gouda', DEFAULT, 1934),
(9, 'Siba Bhai', DEFAULT, 1995),
(10, 'Badal Bhai', 'Afghanistan', 1965);

Select * from Authors;


/* ------------------------------------------------------------
   TABLE 2: Books  (Child of Authors)
   ------------------------------------------------------------
   1. book_id         -> uniquely identifies each book, cannot be empty
   2. title            -> cannot be left empty
   3. isbn              -> must be unique across all books
   4. price              -> must only allow positive values, and
                             should default to 299.00 if not specified
   5. published_year     -> must only allow years between 1900 and 2026
   6. author_id           -> must reference a valid author from the
                              Authors table (Foreign Key)

   Write your CREATE TABLE statement below:
   ------------------------------------------------------------ */
Create Table Books (
    book_id Int Primary key,
    title Varchar(150) Not Null,
    isbn Varchar(20) Unique,
    price Decimal(10,2) Default 299.00 Check (price > 0),
    published_year Int check (published_year Between 1900 and 2026),
    author_id int,
    Foreign key (author_id) References Authors(author_id)
);



/* Insert 10 rows into Books.
   Distribute books across the author_id values from Authors.
   At least 2 rows should rely on the DEFAULT price. */
Insert into Books
(book_id, title, isbn, price, published_year, author_id)
Values
(1, 'Chha Maana Atha Guntha ', '9780140181506', 350.00, 1943, 1),
(2, 'Paraja', '9788129114610', 299.00, 1910, 2),
(3, 'Amruta Santana', '9780006550686', 450.00, 1997, 3),
(4, 'Yajnaseni ', '9780451524935', 399.00, 1949, 4),
(5, 'Harry Potter', '9780747532699', 550.00, 1997, 5),
(6, 'Nila Saila', '9780307474278', default, 2003, 6),
(7, 'Five Point Someone', '9788129115300', 299.00, 2004, 7),
(8, 'The Room on the Roof', '9780143333163', default, 1956, 8),
(9, 'The Immortals of Meluha', '9789380658742', 499.00, 2010, 9),
(10, 'The Kite Runner', '9781594631931', 425.00, 2003, 10);

Select * from Books;

/* ------------------------------------------------------------
   TABLE 3: Members  (Parent table)
   ------------------------------------------------------------
   1. member_id      -> uniquely identifies each member, cannot be empty
   2. member_name    -> cannot be left empty
   3. age              -> must only allow members aged 12 or older
   4. email             -> must be unique across all members
   5. membership_type   -> should default to 'Standard' if not specified

   Write your CREATE TABLE statement below:
   ------------------------------------------------------------ */
Create table Members (
    member_id int primary key,
    member_name Varchar(100) Not null,
    age Int check (age >= 12),
    email Varchar(150) Unique,
    membership_type Varchar(30) Default 'Standard'
);



/* Insert 10 rows into Members.
   At least 2 rows should rely on the DEFAULT membership_type.
   At least 1 row should have a NULL email (optional but unique
   when provided). */

Insert into Members
(member_id, member_name, age, email, membership_type)
Values
(1, 'Rahul Sharma', 22, 'rahul@gmail.com', 'Premium'),
(2, 'Priya Sahu', 25, 'priya@gmail.com', 'Standard'),
(3, 'Hemant Patra', 19, 'Hemant@gmail.com', 'Premium'),
(4, 'Sneha Patra', 21, null, 'Standard'),
(5, 'Rohit Singh', 28, 'rohit@gmail.com', 'Premium'),
(6, 'Ananya Mishra', 18, 'ananya@gmail.com', default),
(7, 'Vikash Behera', 30, 'vikash@gmail.com', 'Premium'),
(8, 'Neha Rout', 24, 'neha@gmail.com', default),
(9, 'Sourav Das', 20, 'sourav@gmail.com', 'Standard'),
(10, 'Pooja Nayak', 27, 'pooja@gmail.com', 'Premium');

select *from members;
/* ------------------------------------------------------------
   TABLE 4: Transactions  (Child of Books AND Members)
   ------------------------------------------------------------
   1. transaction_id  -> uniquely identifies each transaction, cannot be empty
   2. book_id           -> must reference a valid book from the
                            Books table (Foreign Key)
   3. member_id          -> must reference a valid member from the
                             Members table (Foreign Key)
   4. issue_date          -> cannot be left empty
   5. return_date          -> no constraint (can be NULL if not yet returned)
   6. status                -> should default to 'Issued' if not specified
   7. fine                   -> must only allow values of 0 or more, and
                                 should default to 0.00 if not specified

   Write your CREATE TABLE statement below:
   ------------------------------------------------------------ */
Create table Transactions (
    transaction_id Int primary key,
    book_id Int,
    member_id Int,
    issue_date Date not null,
    return_date date,
    status varchar(30) default 'Issued',
    fine decimal(10,2) default 0.00 check (fine >= 0),
    Foreign key (book_id) references Books(book_id),
    Foreign key (member_id) references Members(member_id)
);



/* Insert 10 rows into Transactions.
   Mix book_id and member_id values from the tables above.
   At least 2 rows should rely on the DEFAULT status and/or fine.
   At least 2 rows should have a NULL return_date (not yet returned). */
Insert into Transactions
(transaction_id, book_id, member_id, issue_date, return_date, status, fine)
values
(1, 1, 1, '2026-07-01', '2026-07-10', 'Returned', 0.00),
(2, 2, 2, '2026-07-03', null, default, default),
(3, 3, 3, '2026-07-05', '2026-07-15', 'Returned', 20.00),
(4, 4, 4, '2026-07-07', null, default, default),
(5, 5, 5, '2026-07-10', '2026-07-18', 'Returned', 0.00),
(6, 6, 6, '2026-07-12', '2026-07-20', 'Returned', 50.00),
(7, 7, 7, '2026-07-15', null, 'Issued', 0.00),
(8, 8, 8, '2026-07-18', '2026-07-25', 'Returned', 10.00),
(9, 9, 9, '2026-07-20', null, default, 0.00),
(10, 10, 10, '2026-07-22', '2026-07-30', 'Returned', 0.00);

select * from transactions;



/* ============================================================
   CONSTRAINT-BREAKING DEMOS
   Write ONE INSERT statement for each case below. Run it,
   note the error, then write down (as a comment) which
   constraint caused it to fail.
   ============================================================ */

-- 1. Insert an Author with a NULL author_name
insert into Authors 
values (108,Null,"England",108);

-- 2. Insert an Author with birth_year = 1750 (violates CHECK)
insert into Authors 
values (105,"Prativa B","India",1750);

-- 3. Insert a Book with a duplicate isbn
insert into Books
values (11, 'The Hidden Truth', 'ISBN001', 345.00,2012, 103);

-- 4. Insert a Book with price = -100 (violates CHECK)
insert into Books
values (9, 'The Broken Price', 'ISBN009', -100.00, 2020, 101);

-- 5. Insert a Book with an author_id that does not exist in Authors
--    (violates FOREIGN KEY)
insert into Books
values (9,'The Unknown Author', 'ISBN009', 350.00, 2020, 200);

-- 6. Insert a Member with a duplicate member_id
insert into members
values (1, 'Supritee', 25, 'supritee@gmail.com', 'Standard');

-- 7. Insert a Member with age = 9 (violates CHECK)
insert into members
values  (1, 'Supritee', 8, 'supritee@gmail.com', 'Standard');

-- 8. Insert a Member with a duplicate email
insert into members
values (1, 'Prativa', 23, 'upasana@gmail.com', 'Premium');

-- 9. Insert a Transaction with a book_id that does not exist in Books
--    (violates FOREIGN KEY)
insert into Transactions
values (11,'The Hidden Truth', 'ISBN008', 345.00,2012, 103);

-- 10. Insert a Transaction with a member_id that does not exist in Members
--     (violates FOREIGN KEY)
insert into Transactions
values (15, 'Aman', 27, 'aman@gmail.com', 'Gold');

-- 11. Insert a Transaction with a NULL issue_date
insert into Transactions
values (11, 11, 11,null, '2026-03-25', 'Returned', 50.00);

-- 12. Insert a Transaction with fine = -50 (violates CHECK)
insert into Transactions
values (12, 12, 12, '2026-03-01', '2026-03-12', 'Returned', -50.00);