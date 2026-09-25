-- SYNTAX

-- PRIMARY KEY MEANS EACH ROW IN THAT COLUMN IS UNIQUE TO THE TABLE
-- COMPOSITE KEY MEANS EACH COMBINATION (TITLE + DIRECTOR + RELEASE YEAR) IS UNIQUE TO THE TABLE

-- SELECT
SELECT * 
FROM movies_basic;

-- AS
    -- LABEL A COLUMN OUTPUT
SELECT titles 
AS "Movie Titles" 
FROM movies_basic;

-- WHERE
    -- NARROW YOUR SEARCH
SELECT orders.id 
FROM orders 
WHERE customers.job_title = "Owner";

-- INSERT
INSERT INTO movies_basic2 
VALUES
('Coat of Mysteries', "Children", 1901, "Julian Fowler", "Studio 60", 8.9);

-- UPDATE

-- DELETE
DELETE titles
FROM movies_basic;

-- ORDER BY

-- INNER JOINS
SELECT orders.id 
FROM orders 
INNER JOIN customers 
ON customers.id = orders.customer_id 
WHERE customers.job_title = "Owner";

2
SELECT employees.first_name, employees.last_name, privileges.privilege_name 
FROM employee_privileges 
INNER JOIN employees 
ON employee_privileges.employee_id = employees.id 
INNER JOIN privileges 
ON privileges.id = employee_privileges.employee_id;

3
SELECT products.product_code, products.product_name, products.reorder_level, suppliers.company
FROM suppliers_products
INNER JOIN products
ON products.id = suppliers_products.product_id
INNER JOIN suppliers
ON suppliers.id = suppliers_products.supplier_id
WHERE products.reorder_level >= 25;

-- 4
SELECT inventory_transactions.id, inventory_transactions.transaction_modified_date, products.product_name, inventory_transactions.quantity, inventory_transactions.transaction_type
FROM inventory_transactions
INNER JOIN products
ON products.id = inventory_transactions.product_id
INNER JOIN inventory_transaction_types
ON inventory_transaction_types.id = inventory_transactions.transaction_type
WHERE inventory_transaction_types.type_name = "On Hold";

-- 5
SELECT orders.id, orders.order_date, employees.first_name, employees.last_name
FROM orders
INNER JOIN employees
ON employees.id = orders.employee_id
INNER JOIN orders_status
ON orders_status.id = orders.status_id
WHERE NOT orders_status.status_name = "Shipped";

-- ADVANCED INSERT ("UPSERTS")
INSERT INTO movies_basic2 
VALUES
('Coat of Mysteries', "Children", 1901, "Julian Fowler", "Studio 60", 8.9),
("Students And Boys", "Horror", 1903, "Julian Fowler", "Bix", 3.7),
("Challenge of the Emperor", "Adventure", 2010, "Miley Watson", "Bix", 7.2)
ON DUPLICATE KEY UPDATE
critics_rating = VALUES(critics_rating)

-- REPLACE
-- CAN BE USED INSTEAD OF INSERT, REPLACING DUPLICATES AND ENTERING NEW DATA AS APT
REPLACE INTO movies_basic2 (title, genre, release_year)
VALUES('Coat of Mysteries', "Children", 1901);

REPLACE INTO movies_basic2
VALUES('Coat of Mysteries', "Children", 1901, "Julian Fowler", "Studio 60", 8.9);

-- IGNORE
-- INSERTING WHAT CAN BE INSERTED, AND INGORING THE REST (BC THEYRE DUPLICATES).
INSERT IGNORE INTO movies_basic2
VALUES
('Coat of Mysteries', "Children", 1901, "Julian Fowler", "Studio 60", 8.9),
("Students And Boys", "Horror", 1903, "Julian Fowler", "Bix", 3.7),
("Challenge of the Emperor", "Adventure", 2010, "Miley Watson", "Bix", 7.2);


-- PUTTING IT TOGETHER
INSERT IGNORE INTO movies_basic2
VALUES
('Guests In The Cabin', "Horror", 1992, "Stuart Scott", "Torchwood", 9.8),
("Gangsters And Blacksmiths", "Adventure", 1949, "Sophia Baker", "Bix", 7.2),
("Sonic 2", "Adventure", 2023, "Jeff Fowler", "Paramount", 9.9)
ON DUPLICATE KEY UPDATE
critics_rating = VALUES(critics_rating),
director = VALUES(director),
studio = VALUES(studio);

-- ADVANCED RETRIEVE DATA --------------------------------------------------------------------------------

-- BASIC FUNCTIONS ---------

-- COPY TABLE SQL
SHOW CREATE TABLE movies_basic2;

-- COUNT()
SELECT COUNT(*) 
FROM movies_basic2;
SELECT COUNT(DISTINCT genre) 
FROM movies_basic2;

-- SUM()
SELECT SUM(critics_rating) 
FROM movies_basic2;

-- AVG()
SELECT AVG(critics_rating) 
FROM movies_basic2;

-- MIN() MAX()
SELECT MIN(critics_rating), MAX(critics_rating) 
FROM movies_basic2;

-- ADVANCED MATH FUNCTIONS --

-- POW()
SELECT POW(3,2);

-- SQRT()
SELECT SQRT(10);

-- MODULO %
    -- RETURNS REMAINDER, GOOD FOR FINDING OUT IF INTEGER IS DIVISIBLE
SELECT 3%1;

-- ABS()
SELECT ABS(2-3);

-- CIEL(), FLOOR()
    -- ROUNDING UP/DOWN
SELECT CEIL(3/2), FLOOR(3/2);

-- LOG10(), LOG2(), EXP()
SELECT LOG10(1000), LOG2(256), EXP(1);

-- PI()
SELECT PI() * POW(3,2);

-- SYSTEM FUNCTIONS ---------

-- DATABASE() VERSION() USER()
SELECT DATABASE(), VERSION(), USER();

-- DATE FUNCTIONS -----------

-- DATEDIFF()
SELECT DATEDIFF("1978-09-17", "1975-09-01");

-- FROM_DAYS()
SELECT FROM_DAYS(DATEDIFF("1978-09-17", "1975-09-01"));

-- CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP(), SYSDATE(), NOW()
    -- SYSDATE() IS IN UTC TIME
    -- CURRENT_TIMESTAMP IS TIME WHEN FUNC STARTED
SELECT CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP(), SYSDATE(), NOW();

-- SLEEP(IN_SECONDS)
SELECT SYSDATE(), SLEEP(1.5), SYSDATE();

-- STRING FUNCTIONS ---------

-- UPPER(), LOWER()
    -- FORCE CASE
SELECT UPPER(titles), LOWER(titles) 
FROM movies_basic2;

-- REPLACE()
    -- REPLACES EVERY LETTER "a" WITH 1 FOR EACH TITLE
    -- BUT NOT PERMENANTLY, YOU'D USE INSERT FOR THAT
SELECT REPLACE(title, "a", "1") 
FROM movies_basic2;

-- REVERSE()
SELECT REVERSE(title) 
FROM movies_basic2;

-- CONCAT()
    -- JOIN TWO STRINGS INTO ONE STRING
SELECT CONCAT(title, release_year, director, ...) 
FROM movies_basic2;
SELECT CONCAT_WS(" : ", title, release_year, director) 
FROM movies_basic2;

-- LEFT(), RIGHT()
    -- FIRST FIVE OR LAST FIVE LETTERS OF THE STRING/VALUE
SELECT LEFT(title, 5) 
FROM movies_basic2;

-- LENGTH()
SELECT LENGTH(title) 
FROM movies_basic2 
ORDER BY LENGTH(title);

-- CHAR_LENGTH()
    -- HOW MANY BYTES MAKE UP THE STRING
    -- SPECIAL CHARACTERS ARE MORE THAN ONE BYTE...
SELECT CHAR_LENGTH(title) 
FROM movies_basic2;

-- COMPARISON OPERATORS -----

-- BETWEEN (INCLUSIVE)
SELECT *
FROM movies_basic2
WHERE release_year
BETWEEN 1980 AND 1989;

-- NOT / !=
SELECT *
FROM movies_basic2
WHERE release_year
NOT BETWEEN 1980 AND 1989;
SELECT *
FROM movies_basic2
WHERE release_year != 1990;

-- AND
SELECT *
FROM movies_basic2
WHERE genre = "Drama" 
AND director = "Jeff Fowler";

-- OR
SELECT *
FROM movies_basic2
WHERE genre = "Drama" 
OR genre = "Adventure";

-- IN 
    -- WORKS LIKE "OR" BUT SHORTHAND
SELECT *
FROM movies_basic2
WHERE genre
IN ("Drama", "Adventure", "Sci-Fi");

-- LIKE
    -- FOR MATCHING WILDCARDS
SELECT *
FROM movies_basic2
WHERE title
LIKE "Agent%";

