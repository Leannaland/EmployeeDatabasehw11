DROP DATABASE IF EXISTS Employee_TrackerDB;

CREATE DATABASE Employee_TrackerDB;

USE Employee_TrackerDB;

CREATE TABLE Department (
  Department_ID INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NULL,
  PRIMARY KEY (Department_ID)
);

CREATE TABLE Roles (
  Roles_ID INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary INT NULL, 
  Department_ID int,
  PRIMARY KEY (Roles_ID), 
  FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);

CREATE TABLE Employee (
  Employee_ID INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  Roles_ID int,
  PRIMARY KEY (Employee_ID), 
  FOREIGN KEY (Roles_ID) REFERENCES Roles(Roles_ID)
  
);