-- Create Database
CREATE DATABASE BloodBankDB2;
USE BloodBankDB2;

-- System_Admin table
CREATE TABLE System_Admin (
    User_id INT PRIMARY KEY,
    User_Name VARCHAR(100),
    Email VARCHAR(150),
    Password VARCHAR(150),
    Role VARCHAR(50)
);

-- Hospital_Department table
CREATE TABLE Hospital_Department (
    Dept_id INT PRIMARY KEY,
    Dep_name VARCHAR(100),
    Contact_P VARCHAR(100),
    Contact_N VARCHAR(20)
);

-- Donor table
CREATE TABLE Donor (
    Donor_id INT PRIMARY KEY,
    Donor_Name VARCHAR(100),
    Blood_Type VARCHAR(5),
    Health_Status VARCHAR(50),
    Last_donation_date DATE,
    User_id INT,
    FOREIGN KEY (User_id) REFERENCES System_Admin(User_id)
);

-- Contact_number table
CREATE TABLE Contact_number (
    Contact_number VARCHAR(20),
    Donor_id INT,
    FOREIGN KEY (Donor_id) REFERENCES Donor(Donor_id)
);

-- Blood_request table
CREATE TABLE Blood_request (
    Request_id INT PRIMARY KEY,
    Quantity_req INT,
    Status VARCHAR(50),
    Dept_id INT,
    Blood_type VARCHAR(5),
    Req_date DATE,
    User_id INT,
    FOREIGN KEY (Dept_id) REFERENCES Hospital_Department(Dept_id),
    FOREIGN KEY (User_id) REFERENCES System_Admin(User_id)
);

-- Blood_Inventory table
CREATE TABLE Blood_Inventory (
    Inventory_id INT PRIMARY KEY,
    Blood_type VARCHAR(5),
    Available_Quantity INT,
    Minimum_QA INT,
    User_id INT,
    Request_id INT,
    FOREIGN KEY (User_id) REFERENCES System_Admin(User_id),
    FOREIGN KEY (Request_id) REFERENCES Blood_request(Request_id)
);

-- Donation table
CREATE TABLE Donation (
    Donation_id INT PRIMARY KEY,
    Donor_id INT,
    Blood_Quantity INT,
    Donation_date DATE,
    Blood_type VARCHAR(5),
    Inventory_id INT,
    FOREIGN KEY (Donor_id) REFERENCES Donor(Donor_id),
    FOREIGN KEY (Inventory_id) REFERENCES Blood_Inventory(Inventory_id)
);

-- Sample Inserts
INSERT INTO System_Admin VALUES
(1, 'AdminUser', 'admin@mail.com', 'pass123', 'Manager');

INSERT INTO Hospital_Department VALUES
(1, 'Emergency', 'Dr Ali', '0501234567');

INSERT INTO Donor VALUES
(1, 'Ali Omar', 'A+', 'Good', '2025-01-01', 1),
(2, 'Sara Nabil', 'O-', 'Good', '2025-01-05', 1);

INSERT INTO Contact_number VALUES
('0550001111', 1),
('0550002222', 2);

INSERT INTO Blood_request VALUES
(1, 2, 'Pending', 1, 'A+', '2025-01-10', 1);

INSERT INTO Blood_Inventory VALUES
(1, 'A+', 5, 2, 1, 1);

INSERT INTO Donation VALUES
(1, 1, 1, '2025-01-09', 'A+', 1);

-- Outputs
SELECT * FROM System_Admin;
SELECT * FROM Hospital_Department;
SELECT * FROM Donor;
SELECT * FROM Contact_number;
SELECT * FROM Blood_request;
SELECT * FROM Blood_Inventory;
SELECT * FROM Donation;
