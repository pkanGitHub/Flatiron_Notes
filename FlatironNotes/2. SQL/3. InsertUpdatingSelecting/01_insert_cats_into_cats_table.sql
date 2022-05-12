INSERT INTO cats (name, age, breed) VALUES ("Lil' Bub", 5, "American Shorthair");
INSERT INTO cats (name, age, breed) VALUES ("Hannah", 1, "Tabby");

/* select all the rows of the columns we eant 
to SELECT and then tell SQL the table we want to select them FROM.*/
 SELECT id, name, age, breed FROM cats; 
/* SELECT [names of columns we are going to select]FROM[table we are selecting from];*/

/* '*' => Wildcard selector */
/*Using the wildcard, we can SELECT all the data from all of the columns in the cats table 
like this:*/
SELECT * FROM cats;

/* to select just certain columns from a table, use the following: */
SELECT name FROM cats; 
/* => 
Maru
Lil' Bub
Hannah
*/

/* select more than one column name at a time. */
/* SELECT name, age FROM cats;*/

/* If you have duplicate data (for example, two cats with the same name) 
and you only want to select unique values */
SELECT DISTINCT name FROM cats;


/* SELECTING BASED on Conditions: The WHERE Clause */

/* SELECT * FROM [table name] WHERE [column name] = [some value]; */
SELECT * FROM cats WHERE name = "Maru"; /* In terminal: 1|Maru|3|Scottish Fold*/

/* Use comparison operators like < or > to select specific data*/
SELECT * FROM cats WHERE age < 2;


/* UPDATING DATA*/
/* UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];*/

UPDATE cats SET name = "Hana" WHERE name = "Hannah"; 


/* DELETE DATA */
/* DELETE FROM [table name] WHERE [column name] = [value]; */

DELETE FROM cats WHERE id = 2;