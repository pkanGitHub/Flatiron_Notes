CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT
);

/* 
sqlite> INSERT INTO cats (name, age, breed) VALUES ("Maru", 3, "Scottish Fold");
sqlite> INSERT INTO cats (name, age, breed) VALUES ("Hana", 1, "Tabby");
ALTER TABLE cats ADD COLUMN owner_id INTEGER; */
