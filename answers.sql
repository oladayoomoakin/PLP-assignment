CREATE DATABASE hospital_db;
USE hospital_db;

create table Patient(
patient_id int primary key auto_increment, status varchar(255),
first_name varchar(255) not null,
Last_name varchar(255),
Date_of_birth date,
Gender varchar(255),
language VARCHAR(255)
);

CREATE TABLE providers(
Provider_id INT PRIMARY KEY auto_increment, STATUS VARCHAR(255),
First_name VARCHAR(255) NOT NULL,
Last_name VARCHAR(255),
provider_speciality VARCHAR(255),
email_address VARCHAR(255),
phone_number INT,
date_joined DATE
);

CREATE TABLE ed_visit(
Visit_id INT primary key auto_increment, status varchar(255),
Patient_id INT,
acuity_id INT,
reason_for_visit VARCHAR(255),
disposition VARCHAR(255)
);

CREATE TABLE admissions(
admissions_id INT PRIMARY KEY AUTO_INCREMENT, STATUS VARCHAR(255),
Patient_id INT,
admissions_date DATE,
discharge_date DATE,
discharge_disposition VARCHAR(255),
service VARCHAR(255),
primary_diagniosis VARCHAR(255)
);

CREATE TABLE discharge(
discharge_id INT PRIMARY KEY AUTO_INCREMENT, STATUS VARCHAR(255),
admission_id INT,
patient_id INT,
discharge_date DATE,
discharge_disposition VARCHAR(255)
);