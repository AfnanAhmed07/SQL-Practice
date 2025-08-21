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

## 📂 Database Schema & Sample Data

### 🔹 Create Tables
```sql
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialization VARCHAR(50)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    DoctorID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);
