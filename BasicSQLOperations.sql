/*Inicializar mysql*/
/*Buscar C:\xampp\mysql\bin 
	y ejecutar el siguiente comando
*/
-->
mysql.exe -h localhost -u root -p
--Visualizar bases de datos
-- SQL SUMARY
show databases;
-- crear bases de datos
CREATE DATABASE PEOPLE;
-- Hacer uso de la base de datos
USE PEOPLE;
-- Crear Tablas
CREATE TABLE USERS(
	name varchar(128),
	email varchar(128)
);
-- visualizar tabla
DESCRIBE USERS;
-- INSERTAR DATOS EN LA BD
INSERT INTO USERS (NAME, EMAIL) VALUES ('Roger', 'roger@gmail.com');

INSERT INTO USERS (NAME, EMAIL) VALUES ('Severus', 'severus@gmail.com');

INSERT INTO USERS (NAME, EMAIL) VALUES ('Catalina', 'catalina@gmail.com');

INSERT INTO USERS (NAME, EMAIL) VALUES ('Robert', 'robert@gmail.com');

INSERT INTO USERS (NAME, EMAIL) VALUES ('Jhon', 'jhon@gmail.com');
-- TIEMPO DE INSERCION Y FILAS AFECTADAS
Query OK, 1 row affected (0.005 sec)

-- DELETES A ROW IN A TABLE BASED ON SELECTION CRITERIA
DELETE FROM USERS WHERE EMAIL='jhon@gmail.com'
-- clausula WHERE
-- SQL : UPDATE
--ALLOWS THE UPDATING OF A FIELD WITH A WHERE CLAUSE.
UPDATE USERS SET NAME='Quirino' WHERE email='roger@gmail.com';
-- SELECT 
SELECT * FROM USERS;
SELECT * FROM USERS WHERE email='robert@gmail.com'
SELECT * FROM USERS WHERE name='Jhon'
-- SORTING WITH ORDER BY
SELECT * FROM USERS ORDER BY EMAIL;
-- THE LIKE CLAUSE 
SELECT * FROM USERS WHERE NAME LIKE '%e%'
-- the limit clause
--the limit clause can request the first "n" rows, or the firs "n" rows after some starting row. Note> the firs row
--is zero, not one. 
SELECT * FROM USERS ORDER BY EMAIL DESC LIMIT 2;
SELECT * FROM USERS ORDER BY EMAIL LIMIT 1,2;

-- COUNTING ROWS WITH SELECT
SELECT COUNT(*) FROM USERS;
SELECT COUNT(*) FROM USERS WHERE EMAIL='robert@gmail.com';



