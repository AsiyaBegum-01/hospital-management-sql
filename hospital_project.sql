-- ================================
-- HOSPITAL MANAGEMENT SYSTEM
-- Created by: Asiya
-- ================================

-- TABLE CREATION

CREATE TABLE Doctors (
  doctor_id INT PRIMARY KEY,
  doctor_name VARCHAR(100),
  specialization VARCHAR(100),
  experience_years INT
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(100),
    doctor_id INT,
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    treatment_cost DECIMAL(10,2),
    medicine_cost DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- ================================
-- INSERT DATA
-- ================================

-- Doctors
INSERT INTO Doctors (doctor_id, doctor_name, specialization, experience_years)
VALUES (1, 'Dr. Sharma', 'Cardiology', 12);
INSERT INTO Doctors (doctor_id, doctor_name, specialization, experience_years)
VALUES (2, 'Dr. Rao', 'Neurology', 8);
INSERT INTO Doctors (doctor_id, doctor_name, specialization, experience_years)
VALUES (3, 'Dr. Mehta', 'Orthopedics', 15);

-- Patients
INSERT INTO Patients (patient_id, patient_name, age, gender, disease, doctor_id, admission_date, discharge_date)
VALUES (101, 'Ravi Kumar', 45, 'Male', 'Heart Disease', 1, '2024-01-05', '2024-01-15');
INSERT INTO Patients (pa
