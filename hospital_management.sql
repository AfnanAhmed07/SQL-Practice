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

SELECT d.Name AS Doctor_Name, d.Specialization, COUNT(p.PatientID) AS Total_Patients
FROM Doctors d
LEFT JOIN Patients p ON d.DoctorID = p.DoctorID
GROUP BY d.DoctorID, d.Name, d.Specialization
ORDER BY Total_Patients DESC;

SELECT d.Name AS Doctor_Name, COUNT(p.PatientID) AS Total_Patients
FROM Doctors d
JOIN Patients p ON d.DoctorID = p.DoctorID
GROUP BY d.DoctorID, d.Name
HAVING COUNT(p.PatientID) = (
    SELECT MAX(PatientCount)
    FROM (
        SELECT COUNT(PatientID) AS PatientCount
        FROM Patients
        GROUP BY DoctorID
    ) AS SubQuery
);
