-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking: SELECT staff table to get firstname and lastname then finding howmany orders that staff proceed. I use orders table to count the order_id so I decide to join it together. I need to use COUNT to know how many orders because of that I also need to use GROUP BY to beable to show the result. Lastly use ORDER BY to show who commit the highest.
--
SELECT staff.first_name, staff.last_name, COUNT(orders.order_id)
FROM STAFF 
JOIN orders ON staff.staff_id = orders.staff_id
GROUP BY staff.first_name, staff.last_name
ORDER BY COUNT(orders.order_id) DESC;