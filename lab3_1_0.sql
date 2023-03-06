-- Activity 1
-- Drop column picture from staff.
use sakila;
ALTER TABLE staff
drop picture;
select * from staff;
select * from customer;
-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, active, create_date,last_update)
VALUES (600, 2, 'TAMMY', 'SANDERS', 'Tammy.SANDERS@sakilacustomer.org', 460, 1, '2023-03-06','2023-03-06');
select * from customer where first_name='jon';

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select * from rental;
-- Get the customer ID for Charlotte Hunter,so customer_id =130,staff_id=1
SELECT *, customer_id
FROM customer
WHERE first_name = 'Charlotte' AND last_name = 'Hunter';
select * from inventory;
select * from rental;
-- Get the inventory ID for "Academy Dinosaur" at Store 1
select * from inventory;
SELECT inventory_id
FROM inventory
WHERE film_id = (
  SELECT film_id
  FROM film
  WHERE title = 'Academy Dinosaur'
) AND store_id = 1;
select * from rental;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (CURRENT_DATE, 1, 130, 1);
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (CURRENT_DATE, 2, 130, 1);
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (CURRENT_DATE, 3, 130, 1);
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id)
VALUES (CURRENT_DATE, 4, 130, 1);








