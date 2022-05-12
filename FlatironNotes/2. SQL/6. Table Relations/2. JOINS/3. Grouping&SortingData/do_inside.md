INSERT INTO cats (id, name, age, breed, net_worth) VALUES (1, "Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (2, "Hana", 1, "Tabby", 21800);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (3, "Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (4, "Lil\' Bub", 2, "Tortoiseshell", 2000000); 

INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");

INSERT INTO cats_owners (cat_id, owner_id) VALUES (2, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);

SELECT * FROM cats WHERE net_worth > 0;  <!-- list out  -->

SELECT * FROM cats ORDER BY(net_worth) DESC; <!-- see in descending order -->

SELECT * FROM cats ORDER BY(net_worth) DESC LIMIT 1;


# Let's calculate the sum of the net worth of all of the cats, grouped by owner name:
SELECT owners.name, SUM(cats.net_worth)
FROM owners
INNER JOIN cats_owners
ON owners.id = cats_owners.owner_id
JOIN cats ON cats_owners.cat_id = cats.id
GROUP BY owners.name;



