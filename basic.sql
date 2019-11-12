
/* =============================================================================

CT29 -- Programming in SQL -----------------------------------------------------

================================================================================

SOURCES
 LEARN SQL   https://www.geeksforgeeks.org/sql-tutorial/
 LEARN SQL   https://www.w3schools.com/sql/
 LEARN SQL   https://www.tutorialspoint.com/sql/
 LEARN SQL https://www.geeksforgeeks.org/sql-tutorial/


 IN CLASS SOURCES
 Syntax  https://www.w3schools.com/sql/sql_syntax.asp
 Data Types  https://www.w3schools.com/sql/sql_datatypes.asp

 CREATE DATABASE  https://www.w3schools.com/sql/sql_create_db.asp
 DROP DATABASE  https://www.w3schools.com/sql/sql_drop_db.asp

 CREATE TABLE  https://www.w3schools.com/sql/sql_create_table.asp
 DROP TABLE  https://www.w3schools.com/sql/sql_drop_table.asp

 SELECT statement  https://www.w3schools.com/sql/sql_select.asp
 Where condition  https://www.w3schools.com/sql/sql_where.asp
 INSERT INTO statement  https://www.w3schools.com/sql/sql_insert.asp
 NULL values  https://www.w3schools.com/sql/sql_null_values.asp
 UPDATE statement  https://www.w3schools.com/sql/sql_update.asp
 DELETE  statement  https://www.w3schools.com/sql/sql_delete.asp

================================================================================

---  Frst Steps before creating DATABASE ---

1. Download xampp (Web-server)
2. Create shortcut
3. Double click Xammp
4. Start  apache (wait for green light, allow access)
5. Start sql (wait for green light, allow access)
6. Open browser - to access the BD typing "localhost" or "127.0.0.1" without brackets
7. Wait while xampp dashboard opens
8. Go to right panel and click on "phpAdmin"
9. Explore the Envirenment, then go to upper menu bar wher SQL is. Click on it
10. You re in the Console. Type code inside console and do "Go"

--- Some of The Most Important SQL Commands ---
SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index

IMPORTANT: one of the fields always needs a dedicated primary key
*/


-- 1. To CREATE DATABASE type
CREATE DATABASE personal


-- to use the Database we type (case-sensitive). Best way is to create database
-- in small c.

-- 2. To use a certain Database
USE personal

-- 3. Delete Database
DROP DATABASE personal

-- 4. Create TABLE, sintaxe
CREATE TABLE table_name  (
  atributo1 tipoAtributo,
  atributo2 tipoAtributo
)

-- TABLE example
CREATE TABLE students (
-- numAluno tipoAtributo,
numCC INT AUTO_INCREMENT PRIMARY KEY,
nomeAluno VARCHAR(50), NOT NULL,
dataNasc DATE,
horaNasc TIME,
-- PRIMARY KEY (numAluno) you can use PRIMARY KEY in different ways.
-- or numCC INT PRIMARY KEY,
)

-- 5. INSERT statement, sintaxe
INSERT INTO table_name (column1, column2, column3,..) VALUES ( value1, value2, value3,..);

-- INSERT INTO example
INSERT INTO students VALUES (5,’suta’,’joao’,’Rua far oeste’,’setubal’,19)
-- Note that Integers do not need brackets

-- 6. SELECT statement
SELECT lastNames, firstNames FROM students;
-- are the field names of the table you want to select data from
-- or
SELECT * FROM students
-- select all the fields available in the table

-- 7. UPDATE statement, WHERE clasuse sintaxe
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- UPDATE example
UPDATE students
SET firstName= "Jonas", City= "Los Angeles"
WHERE ID="3"
-- The following SQL statement updates the third student (studentsID = 3) with
-- a new first name and a new city.

/* Note: Be careful when updating records in a table!
 Notice the WHERE clause in the UPDATE statement.
 The WHERE clause specifies which record(s) that should be updated.
 If you omit the WHERE clause, all records in the table will be updated!
*/

-- 8. DELETE statement, sintaxe
DELETE FROM table_name WHERE condition;

-- DELETE example
DELETE FROM students WHERE lastName='Suzi';
-- The following SQL statement deletes the customer "Suzi" from the "students" table:
