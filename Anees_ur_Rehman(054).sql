Create Database Car_Rental_Management_System;
use Car_Rental_Management_System;
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(50),
    rental_rate DECIMAL(8, 2),
    available BOOLEAN
);
CREATE TABLE Rentals (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    rental_date DATE,
    return_date DATE,
    total_amount DECIMAL(8, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);
CREATE TABLE Maintenance (
    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    description TEXT,
    start_date DATE,
    end_date DATE,
    cost DECIMAL(8, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);
CREATE TABLE Reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    car_id INT,
    reservation_date DATE,
    start_date DATE,
    end_date DATE,
    total_amount DECIMAL(8, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_id INT,
    payment_date DATE,
    amount DECIMAL(8, 2),
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id)
);
CREATE TABLE Insurance_Policies (
    policy_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    provider VARCHAR(100),
    start_date DATE,
    end_date DATE,
    premium DECIMAL(8, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);
CREATE TABLE Fuel_Records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    car_id INT,
    date DATE,
    gallons DECIMAL(8, 2),
    cost DECIMAL(8, 2),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id)
);

