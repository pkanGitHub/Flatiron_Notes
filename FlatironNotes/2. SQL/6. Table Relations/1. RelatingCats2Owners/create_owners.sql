CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    name TEXT
);

/* 
INSERT INTO owners (name) VALUES ("mugumogu");
sqlite> SELECT * FROM owners;

sqlite> UPDATE cats SET owner_id = 1 WHERE name = "Maru";
sqlite> UPDATE cats SET owner_id = 1 WHERE name = "Hana";
sqlite> SELECT * FROM cats WHERE owner_id = 1;
1|Maru|3|Scottish Fold|1
2|Hana|1|Tabby|1



*/