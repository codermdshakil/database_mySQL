-- Problem Link - https://leetcode.com/problems/customers-who-never-order/description/

SELECT CUSTOMERS.NAME AS CUSTOMERS
FROM CUSTOMERS
    LEFT JOIN ORDERS
        ON CUSTOMERS.ID = ORDERS.CUSTOMERID
    
GROUP BY CUSTOMERS.ID
HAVING COUNT(ORDERS.ID) = 0
