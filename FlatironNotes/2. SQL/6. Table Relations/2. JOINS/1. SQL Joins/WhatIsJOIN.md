<!-- 
A SQL JOIN clause is a way to combine rows from two or more tables, based on a common column between them. The great thing about relational databases is that they are just that––relational. 

Relational databases allow us not only to store data that is interconnected, but to retrieve that data in ways that reflect that interconnectivity. -->

# -------------------------------------------
# JOIN Types
# -------------------------------------------
INNER JOIN <!-- Returns all rows when there is at least one match in BOTH tables -->
LEFT [OUTER] JOIN <!-- Returns all rows from the left table, and the matched rows from the right table -->
RIGHT JOIN* <!-- Returns all rows from the right table, and the matched rows from the left table -->
FULL JOIN*	<!-- Returns all rows when there is a match in ONE of the tables -->
# * Not supported by SQLite


<!-- 
An INNER JOIN query will return all the rows from both tables you are querying where a certain condition is met. In other words, INNER JOIN will select all rows from both tables as long as there is a match between the specified columns of each table.-->
# -------------------------------------------
# Let's take a look at a boiler-plate INNER JOIN statement, before we try it out on our pets_database.
# -------------------------------------------
SELECT column_name(s)
FROM first_table
INNER JOIN second_table
ON first_table.column_name = second_table.column_name;

# -------------------------------------------

SELECT Cats.name, Cats.breed, Owners.name 
FROM Cats 
INNER JOIN Owners
ON Cats.owner_id = Owners.id;

<!-- The above statement should return the following: -->

name             breed            name
---------------  ---------------  ----------
Maru             Scottish Fold    mugumogu  
Hana             Tabby            mugumogu  
Nona             Tortoiseshell    Sophie  

# -------------------------------------------
SELECT Cats.name, Cats.breed, Owners.name 
AS "owner_name" 
FROM Cats 
INNER JOIN Owners 
ON Cats.owner_id = Owners.id;

<!-- This should return: -->

name             breed            owner_name
---------------  ---------------  ----------
Maru             Scottish Fold    mugumogu  
Hana             Tabby            mugumogu  
Nona             Tortoiseshell    Sophie 

# -------------------------------------------
# Code Along II: LEFT OUTER JOIN
# -------------------------------------------

SELECT column_name(s)
FROM first_table
LEFT [OUTER] JOIN second_table
ON first_table.column_name=second_table.column_name;

# -------------------------------------------
# Writing LEFT OUTER JOINs
# -------------------------------------------
SELECT Cats.name, Cats.breed, Owners.name 
FROM Cats 
LEFT OUTER JOIN Owners 
ON Cats.owner_id = Owners.id;

<!-- You should see the following output returned to you: -->

name             breed            name      
---------------  ---------------  ----------
Maru             Scottish Fold    mugumogu  
Hana             Tabby            mugumogu  
Nona             Tortoiseshell    Sophie 
Lil' Bub         perma-kitten                

# -------------------------------------------
# RIGHT OUTER JOIN
# -------------------------------------------
<!-- The RIGHT OUTER JOIN is the reverse of the LEFT OUTER JOIN. It will return all data from the right, or second, table and the matched data from the left, or first table. -->

SELECT column_name(s)
FROM first_table
RIGHT JOIN second_table
ON first_table.column_name = second_table.column_name;

<!-- Before we (pretend to) write our own RIGHT OUTER JOIN, let's insert a new owner into our Owners table: -->

INSERT INTO owners (name) VALUES ("Penny");

# -------------------------------------------
<!-- The following query would constitute a RIGHT OUTER JOIN: -->

SELECT Cats.name, Cats.breed, Owners.name 
FROM Cats 
RIGHT OUTER JOIN Owners 
ON Cats.owner_id = Owners.id;

<!-- This would return: -->

name             breed            name      
---------------  ---------------  ----------
Maru             Scottish Fold    mugumogu  
Hana             Tabby            mugumogu  
Nona             Tortoiseshell    Sophie    
                                  Penny  

# -------------------------------------------
# FULL OUTER JOIN
# -------------------------------------------
<!-- FULL OUTER JOIN queries will combine the result of both a LEFT and RIGHT OUTER JOIN. In other words, they will return all the data from both the first and second tables. -->

SELECT column_name(s)
FROM first_table
FULL OUTER JOIN second_table
ON first_table.column_name = second_table.column_name;

# -------------------------------------------

<!-- A FULL OUTER JOIN for our Cats and Owners tables would look like this: -->

SELECT Cats.name, Cats.breed, Owners.name
FROM Cats
FULL OUTER JOIN Owners
ON Cats.owner_id = Owners.id;

<!-- It would return: -->

name             breed            name      
---------------  ---------------  ----------
Maru             Scottish Fold    mugumogu  
Hana             Tabby            mugumogu  
Nona             Tortoiseshell    Sophie 
Lil' Bub         perma-kitten 
                                  Penny               