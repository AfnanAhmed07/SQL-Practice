# Hospital Management Database 🏥

A **SQL-based project** to manage doctors and patients in a hospital system.  
This project demonstrates **table creation, relationships (foreign keys), data insertion, and analytical queries**.

---

## ✨ Features
- **Doctors Table** with doctor details and specializations  
- **Patients Table** linked to doctors (one-to-many relationship)  
- Insert sample records of doctors and patients  
- SQL queries to:
  - Count total patients per doctor  
  - Find the doctor(s) with the maximum number of patients  

---

## 🛠️ Tech Stack
- SQL (MySQL, PostgreSQL, or SQL Server compatible)  

---

## 📂 Database Schema

### 🔹 Doctor's Table
```sql
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialization VARCHAR(50)
);

### 🔹 Patient's Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    DoctorID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

### 🔹 Sample Data
INSERT INTO Doctors (DoctorID, Name, Specialization) VALUES
(1, 'Dr. Sharma', 'Cardiologist'),
(2, 'Dr. Khan', 'Neurologist'),
(3, 'Dr. Patel', 'Dermatologist');

INSERT INTO Patients (PatientID, Name, DoctorID) VALUES
(101, 'Rahul', 1),
(102, 'Amit', 1),
(103, 'Sneha', 2),
(104, 'Priya', 1),
(105, 'Ravi', 3),
(106, 'Neha', 2),
(107, 'Suresh', 1);
