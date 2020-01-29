DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department
(	id INT NOT NULL AUTO_INCREMENT
    , name VARCHAR(30) NOT NULL
    , PRIMARY KEY (id)
);

CREATE TABLE role
(	id INT NOT NULL AUTO_INCREMENT
    , title VARCHAR(30) NOT NULL
    , salary DECIMAL(8, 2)
    , department_id INT
    , PRIMARY KEY (id)
);

CREATE TABLE employee
(	id INT NOT NULL AUTO_INCREMENT
    , first_name VARCHAR(30)
    , last_name VARCHAR(30)
    , role_id INT
    , manager_id INT DEFAULT NULL
    , PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES ("Operations"), ("Sales"), ("Finance"), ("Legal"), ("Engineering");

INSERT INTO role (title, salary, department_id)
VALUES ("President", 450000, 1)
, ("VP", 300000, 2) 
, ("COO", 210000, 4) 
, ("Sales Manager", 150000, 3) 
, ("Salesman", 95000, 2)
, ("Consultant", 110000, 6)
, ("Accountant", 800000, 3)
, ("Legal Manager", 150000, 2) 
, ("Attorney", 120000, 6) 
, ("Engineer", 105000, 3) 
, ("Software Engineer", 10000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES("Chris", "Gorman", 1, NULL)
, ("Andrew", "Metzger", 2, 3)
, ("Robert", "Sigg", 3, 1)
, ("Robert", "Schwartz", 4, 7)
, ("Theodore", "Turner", 5, NULL)
, ("Mindy", "Lew", 6, NULL)
, ("David", "Reed", 7, 4)
, ("Chris", "Larsson", 8, NULL)
, ("Zach", "Haas", 9, 3)
, ("Lorie", "Wilkens", 10, 5)
, ("Jeff", "Wolffe", 11, 2)