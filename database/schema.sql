-- Car Rental Management System Database Schema
CREATE DATABASE IF NOT EXISTS car_rental_db;
USE car_rental_db;

-- 1. Admin Table
CREATE TABLE IF NOT EXISTS Admin (
    AdminID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(120) UNIQUE NOT NULL,
    Role VARCHAR(50) DEFAULT 'Fleet Manager'
);

-- 2. Customer Table
CREATE TABLE IF NOT EXISTS Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(120) UNIQUE NOT NULL,
    Phone VARCHAR(11) NOT NULL,
    LicenseNumber VARCHAR(50) UNIQUE NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Vehicle / Car Table
CREATE TABLE IF NOT EXISTS Car (
    CarID INT AUTO_INCREMENT PRIMARY KEY,
    Make VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    RegistrationPlate VARCHAR(30) UNIQUE NOT NULL,
    RentalRate DECIMAL(10, 2) NOT NULL,
    Status ENUM('Available', 'Rented', 'Maintenance') DEFAULT 'Available'
);

-- 4. Booking Table
CREATE TABLE IF NOT EXISTS Booking (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    CarID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    Status ENUM('Pending', 'Confirmed', 'Completed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE,
    FOREIGN KEY (CarID) REFERENCES Car(CarID) ON DELETE CASCADE
);

-- 5. Payment Table
CREATE TABLE IF NOT EXISTS Payment (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    BookingID INT NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Method ENUM('Credit Card', 'Debit Card', 'Cash', 'Online Wallet') NOT NULL,
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID) ON DELETE CASCADE
);