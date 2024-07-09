CREATE DATABASE "User";

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE Agents (
    ID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Password TEXT NOT NULL,
    Gender VARCHAR(10) NOT NULL
);

INSERT INTO Agents (Name, Age, Phone, Password, Gender) 
VALUES (
    'User', 
    20, 
    '055-755-6666', 
    crypt('Password', gen_salt('bf')), 
    'Male'
);


CREATE TABLE Companies (
    ID SERIAL PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL UNIQUE,
    ADDRESS VARCHAR(255),
    COMPANYEXP INT,
    PHONE VARCHAR(20)
);

INSERT INTO Companies (NAME, ADDRESS, COMPANYEXP, PHONE) 
VALUES('Wellness Pharma', '101 Wellness Ave, Healthcity, CA, 12345', 12, '111-555-1234'),
('Global Health Supplies', '202 Global Rd, Worldwide, TX, 67890', 25, '222-666-2345'),
('Prime Med Solutions', '303 Prime St, MediPark, NY, 10111', 18, '333-777-3456'),
('Quality Pharmaceuticals', '404 Quality Blvd, Safeville, FL, 12121', 20, '444-888-4567'),
('PharmaCare Group', '505 Care Lane, Aidtown, IL, 23232', 15, '555-999-5678'),
('Superior Health Inc.', '606 Superior Dr, Supercity, WA, 34343', 10, '666-000-6789'),
('Essential Meds', '707 Essential St, Needham, MA, 45454', 22, '777-111-7890'),
('HealthGuard Pharma', '808 Guard Rd, Protectville, OR, 56565', 14, '888-222-8901'),
('Vitality Pharmaceuticals', '909 Vitality Blvd, Energize, CO, 67676', 16, '999-333-9012'),
('LifePharm Solutions', '1010 Life Ave, Livetown, MI, 78787', 19, '000-444-0123');



CREATE TABLE Medicines (
    ID SERIAL PRIMARY KEY,
    MEDNAME VARCHAR(100) NOT NULL,
    QUANTITY INT NOT NULL,
    FABDATE DATE,
    EXPDATE DATE,
    MEDCOMP VARCHAR(100),
    PRICE DECIMAL(10, 2),
    FOREIGN KEY (MEDCOMP) REFERENCES Companies(NAME)
);

-- Insert records into the Medicines table
INSERT INTO Medicines (MEDNAME, QUANTITY, FABDATE, EXPDATE, MEDCOMP, PRICE) 
VALUES('Paracetamol', 100, '2023-01-01', '2025-01-01', 'Sun Flower Pharma Supplies Inc.', 5.99),
('Ibuprofen', 200, '2023-02-01', '2025-02-01', 'HealthCare Solutions', 10.99),
('Amoxicillin', 150, '2023-03-01', '2025-03-01', 'MediSupply Group', 8.99),
('Aspirin', 250, '2023-04-01', '2025-04-01', 'Sun Flower Pharma Supplies Inc.', 12.99),
('Metformin', 300, '2023-05-01', '2025-05-01', 'HealthCare Solutions', 15.49),
('Simvastatin', 180, '2023-06-01', '2025-06-01', 'MediSupply Group', 20.75),
('Lisinopril', 220, '2023-07-01', '2025-07-01', 'Sun Flower Pharma Supplies Inc.', 10.89),
('Omeprazole', 160, '2023-08-01', '2025-08-01', 'HealthCare Solutions', 18.39),
('Amlodipine', 190, '2023-09-01', '2025-09-01', 'MediSupply Group', 22.55),
('Ciprofloxacin', 140, '2023-10-01', '2025-10-01', 'Sun Flower Pharma Supplies Inc.', 17.49),
('Hydrochlorothiazide', 200, '2023-11-01', '2025-11-01', 'HealthCare Solutions', 11.99),
('Atorvastatin', 230, '2023-12-01', '2025-12-01', 'MediSupply Group', 19.95),
('Vitamin C', 300, '2023-01-15', '2025-01-15', 'Wellness Pharma', 7.99),
('Vitamin D', 200, '2023-02-20', '2025-02-20', 'Global Health Supplies', 9.49),
('Calcium Tablets', 250, '2023-03-25', '2025-03-25', 'Prime Med Solutions', 12.75),
('Iron Supplements', 180, '2023-04-10', '2025-04-10', 'Quality Pharmaceuticals', 15.89),
('Magnesium Capsules', 220, '2023-05-05', '2025-05-05', 'PharmaCare Group', 13.39),
('Zinc Tablets', 160, '2023-06-18', '2025-06-18', 'Superior Health Inc.', 11.55),
('Folic Acid', 140, '2023-07-22', '2025-07-22', 'Essential Meds', 8.49),
('Fish Oil', 210, '2023-08-30', '2025-08-30', 'HealthGuard Pharma', 10.99),
('Probiotics', 190, '2023-09-15', '2025-09-15', 'Vitality Pharmaceuticals', 14.95),
('Multivitamins', 230, '2023-10-20', '2025-10-20', 'LifePharm Solutions', 16.49),
('Aspirin', 250, '2023-04-01', '2025-04-01', 'Sun Flower Pharma Supplies Inc.', 12.99),
('Metformin', 300, '2023-05-01', '2025-05-01', 'HealthCare Solutions', 15.49),
('Simvastatin', 180, '2023-06-01', '2025-06-01', 'MediSupply Group', 20.75),
('Lisinopril', 220, '2023-07-01', '2025-07-01', 'Sun Flower Pharma Supplies Inc.', 10.89),
('Omeprazole', 160, '2023-08-01', '2025-08-01', 'HealthCare Solutions', 18.39),
('Amlodipine', 190, '2023-09-01', '2025-09-01', 'MediSupply Group', 22.55),
('Ciprofloxacin', 140, '2023-10-01', '2025-10-01', 'Sun Flower Pharma Supplies Inc.', 17.49),
('Hydrochlorothiazide', 200, '2023-11-01', '2025-11-01', 'HealthCare Solutions', 11.99),
('Atorvastatin', 230, '2023-12-01', '2025-12-01', 'MediSupply Group', 19.95);

