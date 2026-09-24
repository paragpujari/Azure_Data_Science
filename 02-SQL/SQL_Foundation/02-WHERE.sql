USE SQL_Basics;
--------------------------------Basic Level Interview Questions-------------------------------------------------------
---1. Find customers from Mumbai
SELECT * FROM customers WHERE city = 'Mumbai'
---2. Find customers from Hyderabad
SELECT * FROM customers WHERE city = 'Hyderabad'
---3. Find orders greater than ₹2,000
SELECT * FROM orders WHERE order_amount > 2000
---4. Find orders less than ₹1,000
SELECT * FROM orders WHERE order_amount < 1000
---5. Find employees with salary greater than ₹100,000
SELECT * FROM Employees WHERE salary > 100000
---6. Find employees whose department is IT
SELECT * FROM Employees WHERE department = 'IT'
---7. Find active employees
SELECT * FROM Employees WHERE status = 'Active'
---8. Find employees from Pune
SELECT * FROM Employees WHERE city = 'Pune'
---9. Find products costing less than ₹5,000
SELECT * FROM products WHERE price < 5000
---10. Find products costing more than ₹10,000
SELECT * FROM products WHERE price > 10000

--------------------------------Intermediate Level Interview Questions-----------------------------------------------
---11. Find active IT employees
SELECT * FROM Employees WHERE status = 'Active' AND department = 'IT'
---12. Find employees from Delhi with salary greater than ₹60,000
SELECT * FROM Employees WHERE city = 'Delhi' AND salary > 60000
---13. Find orders between ₹1,000 and ₹3,000
SELECT * FROM orders WHERE order_amount BETWEEN 1000 AND 3000
---14. Find customers from Delhi, Mumbai, or Pune
SELECT * FROM customers WHERE city IN ('Delhi','Mumbai','Pune')
---15. Find employees whose salary is between ₹60,000 and ₹100,000
SELECT * FROM Employees WHERE salary BETWEEN 60000 AND 100000
---16. Find products in Electronics category
SELECT * FROM products WHERE category = 'Electronics'
---17. Find products that are NOT in Electronics
SELECT * FROM products WHERE category <> 'Electronics'
---18. Find customers whose city is NOT Delhi
SELECT * FROM customers WHERE city <> 'Delhi'
---19. Find employees who are either from Delhi or Mumbai
SELECT * FROM Employees WHERE city IN ('Delhi','Mumbai')
---20. Find orders greater than ₹1,000 but less than ₹5,000
SELECT * FROM orders WHERE order_amount > 1000 and order_amount < 5000

--------------------------------Analytical Level Interview Questions-----------------------------------------------
---21. Find all orders having a negative amount
SELECT * FROM orders WHERE order_amount < 0
---22. Find all employees who are currently Active AND have salary above ₹100,000
SELECT * FROM Employees WHERE status = 'Active' AND salary > 100000
---23. Find employees from IT or Finance
SELECT * FROM Employees WHERE department IN ('IT','Finance')
---24. Find products priced between ₹1,000 and ₹15,000
SELECT * FROM products WHERE price BETWEEN 1000 AND 15000
---25. Find customers whose city is one of Delhi, Hyderabad, Noida, or Pune
SELECT * FROM customers WHERE city IN ('Delhi', 'Hyderabad', 'Noida', 'Pune')
---26. Find employees whose salary is NOT between ₹60,000 and ₹100,000
SELECT * FROM Employees WHERE salary NOT BETWEEN 60000 AND 100000
---27. Find employees whose department is not HR
SELECT * FROM Employees WHERE department <> 'HR'
---28. Find employees who are Active and located in either Delhi or Pune
SELECT * FROM Employees WHERE status = 'Active' AND city IN ('Delhi','Pune')
---29. Find orders from customer 101 where the amount is greater than ₹1,000
SELECT * FROM orders WHERE customer_id = '101' AND order_amount > 1000
---30. Find employees whose salary is greater than ₹120,000 OR they are from the IT department
SELECT * FROM Employees WHERE salary > 120000 OR department IN ('IT')
