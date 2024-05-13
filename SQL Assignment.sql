Create Database Assignmnet_01;
use Assignment_01;

#Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactNumber VARCHAR(15),
    Address VARCHAR(100)
);
select * from patients;
#Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialization VARCHAR(100),
    ContactNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(100)
);
select * from doctors;

#Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    StartTime TIME,
    EndTime TIME
);
select * from appointments;


#Visits table
CREATE TABLE Visits (
    VisitID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    Diagnosis TEXT,
    Prescription TEXT
);
select * from visits;
#Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Description TEXT
);
select * from departments;
#Wards table
CREATE TABLE Wards (
    WardID INT PRIMARY KEY,
    WardNumber INT,
    DepartmentID INT,
    Capacity INT
);

select * from wards;

#Beds table
CREATE TABLE Beds (
    BedID INT PRIMARY KEY,
    WardID INT,
    BedNumber INT,
    Availability VARCHAR(10)
);
select * from beds;

#Medications table
CREATE TABLE Medications (
    MedicationID INT PRIMARY KEY,
    MedicationName VARCHAR(100),
    UnitPrice int
);

select * from medications;


#Tests table
CREATE TABLE Tests (
    TestID INT PRIMARY KEY,
    TestName VARCHAR(100),
    Price int
);
select * from tests;
#Results table
CREATE TABLE Results (
    ResultID INT PRIMARY KEY,
    VisitID INT,
    TestID INT,
    ResultDetails TEXT
  );
select * from results;
