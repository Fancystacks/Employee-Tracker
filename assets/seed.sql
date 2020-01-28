DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;

USE employeeDB;

CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE position (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NOT NULL,
salary VARCHAR(20) NOT NULL,
department_id INT
);

CREATE TABLE employee (
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT,
manager_id INT
);

INSERT INTO department (name)
VALUES ("Sales"), ("Finance"), ("Legal"), ("Engineering");

INSERT INTO position (title, salary, department_id)
VALUES ("Sales Manager", 110000, 1), ("Salesman", 90000, 1), ("Consultant", 100000, 1),
("Accountant", 85000, 2), ("Attorney", 130000, 2), ("Legal Manager", 150000, 2),
("Electrical Engineer", 100000, 3), ("Software Engineer", 120000, 3), ("Field Engineer", 100000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Robert", "Sigg", 2, 4), ("Robert", "Schwartz", 2, 3), ("Chris", "Gorman", 1, NULL),
("Andrew", "Metzger", 1, 3), ("Micah", "Meyers", 3, NULL), ("Randy", "Newman", 1, NULL), ("Leah", "Migacz", 3, 5),
("Trent", "Trani", 2, 6), ("David", "Reed", 3, 2);