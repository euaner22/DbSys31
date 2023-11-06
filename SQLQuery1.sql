CREATE DATABASE FinalProject;

USE FinalProject;

CREATE TABLE schedule
(
    id INT PRIMARY KEY,
    employee_id INT,
    start_time TIME,
    end_time TIME
);

CREATE TABLE employee
(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE client
(
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50),
    client_mobile VARCHAR(25),
    client_email VARCHAR(50)
);

CREATE TABLE appointment
(
    appointment_id INT PRIMARY KEY,
    date_created TIME,
    employee_created INT,
    client_id INT,
    employee_id INT,
    client_name VARCHAR(50),
    client_contact VARCHAR(50),
    start_time TIME,
    expected_end_time TIME,
    end_time TIME,
    price_expected DECIMAL(10,2),
    price_full DECIMAL(10,2),
    discount DECIMAL(10,2),
    price_final DECIMAL(10,2),
    canceled TINYINT,
    reason TEXT
);

CREATE TABLE service
(
    service_id INT PRIMARY KEY,
    service_name VARCHAR(50),
    duration INT,
    price DECIMAL(10,2)
);

CREATE TABLE service_provided
(
    id INT PRIMARY KEY,
    appointment_id INT,
    service_id INT,
    price DECIMAL(10,2)
);

CREATE TABLE service_booked
(
    id INT PRIMARY KEY,
    appointment_id INT,
    service_id INT,
    price DECIMAL(10,2)
);