-- write your queries here

-- query 1
SELECT * FROM owners FULL JOIN vehicles ON owner_id = owners.id;

-- query 2
SELECT first_name, last_name, COUNT(vehicles) 
FROM owners FULL JOIN vehicles ON owner_id = owners.id 
GROUP BY (first_name, last_name) 
ORDER BY first_name;

-- query 3
SELECT first_name, last_name, AVG(price) AS average_price, COUNT(vehicles)
FROM owners JOIN vehicles ON owner_id = owners.id
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000
ORDER BY first_name DESC;