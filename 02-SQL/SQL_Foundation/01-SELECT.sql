USE SQL_Basics;
------------------------------------------------Basic Level Interview Questions------------------------------------------------------
---1. Display all customers
SELECT * FROM customers
---2. Display only customer names
SELECT customer_name FROM customers
---3. Display customer name and city
SELECT customer_name,city FROM customers
---4. Display all products
SELECT * FROM products
---5. Display only product name and price
SELECT product_name,price FROM products
---6. Display all employees
SELECT * FROM Employees
---7. Display employee names and salaries
SELECT emp_name,salary FROM Employees
---8. Display order ID and order amount
SELECT order_id, order_amount FROM orders
---9. Display payment ID, payment mode and payment status
SELECT payment_id, payment_mode, payment_status FROM Payments1
---10. Display department ID and department name
SELECT dept_id, dept_name FROM Departments


-------------------------------------------Intermediate Level Interview Questions--------------------------------------------------
---11. Display employee names with an alias
SELECT emp_name AS Employee_Name FROM Employees
---12. Display product name and rename price
SELECT product_name, price AS product_price FROM products
---13. Calculate salary after ₹10,000 increment
SELECT emp_name,salary,(salary+10000) as increment_salary FROM Employees
---14. Calculate a 10% discount on products
SELECT product_name, price as original_price,(0.10)*price as discount_price, (price*0.90) as price_after_discount FROM products
---15. Calculate order amount after ₹100 adjustment
SELECT order_id, order_amount as original_order_amount,(order_amount+100) as new_order_amount FROM orders
---16. Display employee salary in thousands
SELECT emp_name,salary,(salary/1000) as thousands_salary FROM Employees
---17. Display product price with tax calculation 18% Tax
SELECT product_name, price,(0.18)*price as tax_amount,(price*1.18) as price_after_tax FROM products
---18. Display customer ID with customer name. Create a combined display using concatenation
SELECT customer_id,customer_name,CONCAT(customer_name, ' ',city) as customer_details FROM customers
---19. Display order amount as positive value
SELECT order_id, order_amount, ABS(order_amount) as Absolute_amount FROM orders
---20. Display product prices rounded to 0 decimal places
SELECT product_name,ROUND(price,0) as prices FROM products

---------------------------------------Analytical Level Interview Questions-------------------------------------------------------
---21. Identify the employee salary after a 15% increment
SELECT emp_name,salary,(0.15*salary) as increment_salary,salary*1.15 as salary_after_increment FROM Employees
---22. Calculate product price including 18% GST
SELECT product_name,price,(0.18*price) as tax,price*1.18 as price_after_tax FROM products
---23. Identify the order amount after a 5% service charge
SELECT order_id, order_amount, 0.05*order_amount as service_charge, order_amount*1.05 as order_amount_after_servicecharge FROM orders
---24. Calculate employee experience from hire year
SELECT emp_name,salary,Hire_Date,YEAR(Hire_Date) AS Hire_Year FROM Employees
---25. Extract employee birth year
SELECT emp_name,birth_date,YEAR(birth_date) AS Birth_Year FROM Employees
---26. Display order year and month
SELECT order_id, order_date,YEAR(order_date) as order_year,MONTH(order_date) as order_month FROM orders
---27. Display product information with a price category
SELECT product_name, price, CASE WHEN price >= 50000                   THEN 'High Price'
                                 WHEN price >= 10000 AND price < 50000 THEN 'Medium Price'
                                 ELSE                                       'Low Price'
                                 END AS price_category
                                 FROM products
---28. Classify employee salary
SELECT emp_name, salary, CASE WHEN salary >= 120000                       THEN 'High   Salary'
                                 WHEN salary >= 80000 AND salary < 120000 THEN 'Medium Salary'
                                 ELSE                                          'Low    Salary'
                                 END AS Salary_category
                                 FROM Employees
---29. Classify payment status
SELECT payment_id, payment_mode, payment_status, CASE WHEN payment_status = 'Success' THEN 'Completed'
                                                      WHEN payment_status = 'Pending' THEN 'In progress'
                                                                                      ELSE 'Unsuccessful'
                                                                                      END AS payment_status_category
                                                        FROM Payments1
---30. Identify positive and negative orders
SELECT order_id, order_amount,CASE WHEN order_amount > 0 THEN 'Positive Type'
                                   WHEN order_amount < 0 THEN 'Negative Type'
                                                         ELSE 'Zero'
                                                         END AS Amount_Type
                                                         FROM orders