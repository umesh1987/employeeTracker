
-- creating employee database and table
DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL
  PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NULL,
    salary DECIMAL(10,2),
    department_id INT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NULL,
    last_name VARCHAR(30) NULL,
    role_id INT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id)  
);

-- insert some fake data into the employee database 

-- 1 insert some fake data into department table
INSERT INTO department(name) VALUES("Human resources"); --101
INSERT INTO department(name) VALUES("Information technology(IT)"); -- 201
INSERT INTO department(name) VALUES("Finance"); --301
INSERT INTO department(name) VALUES("Marketing"); --401


-- 2 insert some fake data into role table
INSERT INTO role(title, salary, department_id) VALUES("HR manager", 55000.00, 101);
INSERT INTO role(title, salary, department_id) VALUES("HR assistant", 45000.00, 101);

INSERT INTO role(title, salary, department_id) VALUES("IT manager", 95000.00, 201);
INSERT INTO role(title, salary, department_id) VALUES("Javascript developer", 85000.00, 201);
INSERT INTO role(title, salary, department_id) VALUES("SQL developer", 63000.00, 201);
INSERT INTO role(title, salary, department_id) VALUES("web developer", 61000.00, 201);
INSERT INTO role(title, salary, department_id) VALUES("Junior web developer", 42000.00, 201);

INSERT INTO role(title, salary, department_id) VALUES("Accountant", 52000.00, 301);

INSERT INTO role(title, salary, department_id) VALUES("Marketing lead", 56000.00, 401);
INSERT INTO role(title, salary, department_id) VALUES("Marketing assistant", 38000.00, 401);


-- 3 insert some fake data into employee table
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Brittni", "Lightizer", 101, 01);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Cody", "Clark", 101, 01);

INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Dan", "Edwards", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Gen", "Li", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Hannah", "Fuentes", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Javier", "Barragan", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Leo", "Fernandez", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Stefania", "Stefansdottir", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Storey", "Sheldon", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Umesh", "Shrestha", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Andrew", "Layendecker", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Brayden", "Deloach", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Brett", "Sevy", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Claudia", "Huerta", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Clint", "Montgomery", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Cody", "Switzer", 201, 02);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Francisco", "Cortez", 201, 02);

INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Frederick", "Guthrie", 301, NULL);

INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("James", "Helms", 401, NULL);
INSERT INTO employees(first_name, last_name, role_id, manager_id) VALUES("Josh", "Furlin", 401, NULL);