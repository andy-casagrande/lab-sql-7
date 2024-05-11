-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TEMPORARY TABLE SAKILA.MAY_RENTALS AS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 5;

-- 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO MAY_RENTALS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 5;

SELECT * FROM SAKILA.MAY_RENTALS;

-- 3. Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TEMPORARY TABLE SAKILA.JUNE_RENTALS AS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 6;

-- 4. Insert values in the table rentals_june using the table rental, 
-- filtering values only for the month of June.
INSERT INTO JUNE_RENTALS
SELECT * FROM SAKILA.RENTAL
WHERE MONTH(RENTAL_DATE) = 6;

SELECT * FROM SAKILA.JUNE_RENTALS;

-- 5. Check the number of rentals for each customer for May.
SELECT CUSTOMER_ID, COUNT(*) AS CUSTOMER_MAY_COUNT
FROM SAKILA.MAY_RENTALS
GROUP BY CUSTOMER_ID;

-- 6. Check the number of rentals for each customer for June.
SELECT CUSTOMER_ID, COUNT(*) AS CUSTOMER_JUNE_COUNT
FROM SAKILA.JUNE_RENTALS
GROUP BY CUSTOMER_ID;
