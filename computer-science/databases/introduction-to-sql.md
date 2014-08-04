# Introduction to SQL

SQL (Structured Query Language) is a query language designed specifically for interacting with relational databases.

SQL is pronounced "ess queue el" or "sequel".

## Data Types

Booleans have three possible values (true, false, null)

## Queries

### SELECT

SELECT *columns* FROM *table* WHERE *conditions*;

#### AS

SELECT *column* AS *alternate_name* FROM *table* WHERE *conditions*;

### FROM

### Joins

### WHERE

AND, OR, NOT, IS NULL, IS NOT NULL

<, >, <=, >=, = (no double equals)

Patterns: % (multiple char) _ (single char)

#### LIKE

(from RH slides:)

`SELECT name FROM customer WHERE phone LIKE '%555-___'`

### GROUP BY

### ORDER BY

## Manipulating Data

### INSERT

### UPDATE

### DELETE

## Manipulating Schemas

### CREATE TABLE

### ALTER TABLE

### TRUNCATE TABLE

### DROP TABLE

## Transactions (START, SAVE, COMMIT, ROLLBACK)

## Resources & Further Reading

* [Wikipedia: SQL](http://en.wikipedia.org/wiki/SQL)
* [SQLite Tutorial](http://zetcode.com/db/sqlite/)
* [Tutorials Point: SQLite](http://www.tutorialspoint.com/sqlite/index.htm)
* [SQLCourse.com](http://www.sqlcourse.com/index.html)
* [SQLZOO Interactive SQL Tutorial](http://sqlzoo.net/wiki/Main_Page)
* [Learn SQL The Hard Way](http://sql.learncodethehardway.org/)
* [Jumpstart Lab's Fundamental SQL](http://tutorials.jumpstartlab.com/topics/fundamental_sql.html)
