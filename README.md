# sql_all_types_of_joins
SQL Joins Example using Customer and Orders tables.

This repository demonstrates practical use of all major SQL JOIN types using a real-time master–child data model. The project includes examples of:

• INNER JOIN  
• LEFT (OUTER) JOIN  
• RIGHT (OUTER) JOIN  
• FULL (OUTER) JOIN  
• CROSS JOIN  

The Customer table acts as the master table, while the Orders table acts as the child table with foreign key reference. All queries are grouped with headings for easy understanding and copy-paste execution in SQL compilers.

This project is ideal for:
✔ SQL beginners and intermediate learners  
✔ Interview preparation (joins-based questions)  
✔ Academic or mini-project reference  
✔ GitHub portfolio showcase for SQL

# customer table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR2(50),
    city VARCHAR2(50)
);

# insert values
INSERT INTO customer (customer_id, customer_name, city) VALUES (1, 'Ravi Kumar', 'Hyderabad');
INSERT INTO customer (customer_id, customer_name, city) VALUES (2, 'Anjali Sharma', 'Mumbai');
INSERT INTO customer (customer_id, customer_name, city) VALUES (3, 'Amit Singh', 'Delhi');
INSERT INTO customer (customer_id, customer_name, city) VALUES (4, 'Priya Verma', 'Bangalore');
INSERT INTO customer (customer_id, customer_name, city) VALUES (5, 'Rahul Jain', 'Chennai');

# orders table 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount NUMBER(10,2),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

# inserting records in orders
INSERT INTO orders VALUES (101, 1, TO_DATE('2025-01-01','YYYY-MM-DD'), 1500.50);
INSERT INTO orders VALUES (102, 1, TO_DATE('2025-01-05','YYYY-MM-DD'), 2000.00);
INSERT INTO orders VALUES (103, 1, TO_DATE('2025-01-10','YYYY-MM-DD'), 3500.00);
INSERT INTO orders VALUES (104, 2, TO_DATE('2025-01-07','YYYY-MM-DD'), 800.00);
INSERT INTO orders VALUES (105, 2, TO_DATE('2025-01-12','YYYY-MM-DD'), 1900.75);
INSERT INTO orders VALUES (106, 2, TO_DATE('2025-01-15','YYYY-MM-DD'), 2600.00);
INSERT INTO orders VALUES (107, 3, TO_DATE('2025-01-08','YYYY-MM-DD'), 4200.00);
INSERT INTO orders VALUES (108, 3, TO_DATE('2025-01-18','YYYY-MM-DD'), 5800.00);
INSERT INTO orders VALUES (109, 3, TO_DATE('2025-01-22','YYYY-MM-DD'), 1200.50);
INSERT INTO orders VALUES (110, 4, TO_DATE('2025-01-02','YYYY-MM-DD'), 300.00);
INSERT INTO orders VALUES (111, 4, TO_DATE('2025-01-05','YYYY-MM-DD'), 750.25);
INSERT INTO orders VALUES (112, 4, TO_DATE('2025-01-09','YYYY-MM-DD'), 900.00);
INSERT INTO orders VALUES (113, 4, TO_DATE('2025-01-11','YYYY-MM-DD'), 1340.75);
INSERT INTO orders VALUES (114, 5, TO_DATE('2025-01-03','YYYY-MM-DD'), 2500.00);
INSERT INTO orders VALUES (115, 5, TO_DATE('2025-01-06','YYYY-MM-DD'), 4000.00);
INSERT INTO orders VALUES (116, 5, TO_DATE('2025-01-14','YYYY-MM-DD'), 1200.50);
INSERT INTO orders VALUES (117, 5, TO_DATE('2025-01-17','YYYY-MM-DD'), 1800.00);
INSERT INTO orders VALUES (118, 2, TO_DATE('2025-01-20','YYYY-MM-DD'), 3900.75);
INSERT INTO orders VALUES (119, 3, TO_DATE('2025-01-25','YYYY-MM-DD'), 2800.00);
INSERT INTO orders VALUES (120, 1, TO_DATE('2025-01-30','YYYY-MM-DD'), 5000.00);
