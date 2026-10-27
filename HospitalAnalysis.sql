CREATE DATABASE HospitalDB;

USE HospitalDB;

# TABLE 1 : DEPARTMENTS
CREATE TABLE Departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50),
floor_no INT
);

INSERT INTO Departments VALUES
(1,'Cardiology',2),
(2,'Neurology',3),
(3,'Orthopedics',4),
(4,'Pediatrics',1),
(5,'Dermatology',2),
(6,'General Medicine',1),
(7,'ENT',3),
(8,'Gynecology',4);

#TABLE 2 : DOCTORS
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    gender VARCHAR(10),
    department_id INT,
    experience_years INT,
    consultation_fee DECIMAL(8,2),
    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id)
);

INSERT INTO Doctors VALUES
(101,'Dr. Amit Sharma','Male',1,15,1200),
(102,'Dr. Sneha Reddy','Female',2,11,1400),
(103,'Dr. Karan Mehta','Male',3,8,900),
(104,'Dr. Anjali Rao','Female',4,13,1000),
(105,'Dr. Vikram Singh','Male',5,9,800),
(106,'Dr. Neha Kapoor','Female',6,12,700),
(107,'Dr. Rohan Gupta','Male',7,10,850),
(108,'Dr. Pooja Nair','Female',8,14,1100),
(109,'Dr. Arjun Patel','Male',1,7,1000),
(110,'Dr. Meera Joshi','Female',6,16,900);

#TABLE 3 : PATIENTS
CREATE TABLE Patients (
patient_id INT PRIMARY KEY,
patient_name VARCHAR(100),
gender VARCHAR(10),
age INT,
blood_group VARCHAR(5),
city VARCHAR(50),
phone VARCHAR(15),
registration_date DATE
);

INSERT INTO Patients VALUES
(201,'Aarav Sharma','Male',24,'B+','Hyderabad','9876543210','2024-01-10'),
(202,'Priya Reddy','Female',32,'O+','Hyderabad','9876543211','2024-01-14'),
(203,'Rahul Verma','Male',41,'A+','Bengaluru','9876543212','2024-01-18'),
(204,'Sneha Kapoor','Female',28,'AB+','Chennai','9876543213','2024-01-20'),
(205,'Karan Singh','Male',36,'O-','Mumbai','9876543214','2024-02-01'),
(206,'Ananya Rao','Female',22,'A+','Pune','9876543215','2024-02-03'),
(207,'Rohit Kumar','Male',48,'B+','Delhi','9876543216','2024-02-08'),
(208,'Meera Joshi','Female',55,'AB-','Hyderabad','9876543217','2024-02-15'),
(209,'Vikram Patel','Male',30,'O+','Ahmedabad','9876543218','2024-02-20'),
(210,'Pooja Nair','Female',26,'A-','Kochi','9876543219','2024-02-25'),
(211,'Arjun Das','Male',34,'B-','Kolkata','9876543220','2024-03-02'),
(212,'Divya Iyer','Female',29,'O+','Chennai','9876543221','2024-03-05'),
(213,'Siddharth Jain','Male',44,'A+','Jaipur','9876543222','2024-03-10'),
(214,'Nisha Gupta','Female',39,'B+','Lucknow','9876543223','2024-03-12'),
(215,'Aditya Mishra','Male',27,'AB+','Indore','9876543224','2024-03-15'),
(216,'Kavya Reddy','Female',31,'O-','Hyderabad','9876543225','2024-03-20'),
(217,'Harsh Vardhan','Male',37,'A+','Nagpur','9876543226','2024-03-24'),
(218,'Neha Sharma','Female',23,'B+','Delhi','9876543227','2024-03-28'),
(219,'Mohit Arora','Male',51,'O+','Pune','9876543228','2024-04-01'),
(220,'Ritika Singh','Female',33,'AB+','Mumbai','9876543229','2024-04-05'),

(221,'Yash Patel','Male',40,'A-','Surat','9876543230','2024-04-10'),
(222,'Ishita Roy','Female',25,'B+','Kolkata','9876543231','2024-04-14'),
(223,'Nitin Kumar','Male',46,'O+','Hyderabad','9876543232','2024-04-18'),
(224,'Ayesha Khan','Female',35,'A+','Bhopal','9876543233','2024-04-21'),
(225,'Gaurav Sharma','Male',29,'AB-','Noida','9876543234','2024-04-24'),
(226,'Simran Kaur','Female',42,'O-','Chandigarh','9876543235','2024-04-27'),
(227,'Manoj Yadav','Male',38,'B+','Patna','9876543236','2024-05-02'),
(228,'Shruti Menon','Female',27,'A+','Kochi','9876543237','2024-05-08'),
(229,'Deepak Soni','Male',50,'O+','Jaipur','9876543238','2024-05-12'),
(230,'Riya Verma','Female',21,'B-','Hyderabad','9876543239','2024-05-15');


#TABLE 4 : APPOINTMENTS
CREATE TABLE Appointments (
appointment_id INT PRIMARY KEY,
patient_id INT,
doctor_id INT,
appointment_date DATE,
disease VARCHAR(100),
treatment_cost DECIMAL(10,2),
payment_mode VARCHAR(30),
status VARCHAR(20),
rating INT,FOREIGN KEY (patient_id)
REFERENCES Patients(patient_id),
FOREIGN KEY (doctor_id)
REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments VALUES
(301,201,101,'2024-06-01','Chest Pain',8500,'Insurance','Completed',5),
(302,202,106,'2024-06-01','Fever',1200,'Cash','Completed',4),
(303,203,102,'2024-06-02','Migraine',3500,'UPI','Completed',5),
(304,204,104,'2024-06-02','Child Vaccination',1800,'Credit Card','Completed',5),
(305,205,103,'2024-06-03','Fracture',15000,'Insurance','Completed',4),
(306,206,105,'2024-06-03','Skin Allergy',2200,'Cash','Completed',4),
(307,207,106,'2024-06-04','Diabetes',2500,'UPI','Completed',5),
(308,208,101,'2024-06-04','Heart Checkup',6500,'Insurance','Completed',5),
(309,209,107,'2024-06-05','Sinus Infection',1700,'Cash','Completed',3),
(310,210,108,'2024-06-05','Pregnancy Checkup',4000,'UPI','Completed',5),
(311,211,103,'2024-06-06','Back Pain',3200,'Debit Card','Completed',4),
(312,212,104,'2024-06-06','Viral Fever',1500,'Cash','Completed',4),
(313,213,102,'2024-06-07','Brain MRI Consultation',5000,'Insurance','Completed',5),
(314,214,101,'2024-06-07','High BP',2800,'UPI','Completed',4),
(315,215,105,'2024-06-08','Acne Treatment',2600,'Cash','Completed',5),
(316,216,108,'2024-06-08','Pregnancy Checkup',4200,'Insurance','Completed',5),
(317,217,103,'2024-06-09','Knee Pain',3900,'Credit Card','Completed',4),
(318,218,107,'2024-06-09','Ear Infection',1800,'Cash','Completed',3),
(319,219,106,'2024-06-10','Diabetes',2400,'UPI','Completed',4),
(320,220,101,'2024-06-10','Heart Checkup',7200,'Insurance','Completed',5),
(321,221,102,'2024-06-11','Migraine',3300,'Debit Card','Completed',4),
(322,222,104,'2024-06-11','Child Fever',1300,'Cash','Completed',5),
(323,223,101,'2024-06-12','Chest Pain',9200,'Insurance','Completed',5),
(324,224,108,'2024-06-12','Pregnancy Checkup',3800,'UPI','Completed',5),
(325,225,105,'2024-06-13','Psoriasis',3100,'Cash','Completed',4),
(326,226,106,'2024-06-13','Thyroid',2700,'Debit Card','Completed',4),
(327,227,103,'2024-06-14','Shoulder Pain',3600,'UPI','Completed',4),
(328,228,104,'2024-06-14','Vaccination',1700,'Cash','Completed',5),
(329,229,102,'2024-06-15','Vertigo',4500,'Insurance','Completed',4),
(330,230,105,'2024-06-15','Skin Infection',2000,'Cash','Completed',5),
(331,201,106,'2024-07-01','Diabetes',2400,'UPI','Completed',5),
(332,202,101,'2024-07-02','Heart Checkup',6800,'Insurance','Completed',5),
(333,203,103,'2024-07-02','Back Pain',3400,'Cash','Completed',4),
(334,204,105,'2024-07-03','Skin Allergy',2100,'UPI','Completed',4),
(335,205,103,'2024-07-03','Fracture Follow-up',1800,'Insurance','Completed',5),
(336,206,106,'2024-07-04','Fever',1400,'Cash','Completed',4),
(337,207,102,'2024-07-04','Headache',2600,'Debit Card','Completed',4),
(338,208,101,'2024-07-05','ECG Review',5500,'Insurance','Completed',5),
(339,209,107,'2024-07-05','Sinus Infection',1600,'Cash','Cancelled',NULL),
(340,210,108,'2024-07-06','Pregnancy Checkup',4100,'Insurance','Completed',5),
(341,211,103,'2024-07-06','Back Pain',3000,'UPI','Completed',4),
(342,212,104,'2024-07-07','Viral Fever',1400,'Cash','Completed',4),
(343,213,102,'2024-07-07','Migraine',3400,'Insurance','Pending',NULL),
(344,214,101,'2024-07-08','Heart Checkup',7600,'Insurance','Completed',5),
(345,215,105,'2024-07-08','Skin Rash',1800,'Cash','Completed',4),
(346,216,108,'2024-07-09','Pregnancy Scan',6000,'Insurance','Completed',5),
(347,217,103,'2024-07-09','Joint Pain',3700,'Debit Card','Completed',4),
(348,218,107,'2024-07-10','Ear Pain',1500,'Cash','Completed',3),
(349,219,106,'2024-07-10','Diabetes Review',2300,'UPI','Completed',5),
(350,220,101,'2024-07-11','Heart Checkup',8100,'Insurance','Completed',5);


## Basic SQL  (Questions 1–10)
#Q.01
select * from patients ;
#Q.02
SELECT patient_name, age, city
FROM Patients;
#Q.03
select * from doctors ;
#Q.04
SELECT DISTINCT city
FROM Patients;
#Q.05
SELECT *
FROM Appointments
ORDER BY appointment_date ASC;
#Q.06
SELECT *
FROM Patients
ORDER BY registration_date DESC
LIMIT 5;
#Q.07
SELECT  doctor_name, consultation_fee
FROM Doctors;
#Q.08
SELECT * From Departments ; 
#Q.09
SELECT *
FROM Appointments
WHERE status = 'Completed';
#Q.10
SELECT *
FROM Appointments
ORDER BY treatment_cost DESC;
SELECT *
FROM Appointments;
# Filtering (Questions 11–20)
#Q11
SELECT * 
FROM patients WHERE age > 40 ;
#Q12
SELECT * 
FROM Doctors WHERE experience_years > 10 ;
#Q13
SELECT *
FROM Appointments WHERE treatment_cost > 5000 ;
SELECT *
FROM Appointments
WHERE treatment_cost > 5000
ORDER BY treatment_cost ASC;
#Q14
SELECT *FROM Patients 
WHERE city = "Hyderabad" ;
#Q15
SELECT *
FROM Appointments
WHERE payment_mode = 'Insurance';
#Q16
SELECT * 
FROM Patients 
WHERE age between 25 and 40 ;
#Q17
SELECT * 
FROM Doctors 
WHERE consultation_fee IN (900 ,1000 );
#Q18
SELECT * FROM Patients 
WHERE patient_name LIKE 'A%';
#Q19
SELECT *
FROM Appointments
WHERE status IN ('Pending', 'Cancelled');
#Q20
SELECT *FROM Appointments
WHERE rating IS NULL;

#Aggregate Functions (Questions 21–30)
 #Q21
SELECT COUNT(*) AS total_patients
FROM Patients;
#Q22
SELECT count(*) AS TOTAL_DOCTORS 
FROM Doctors ; 
#Q23
SELECT AVG(consultation_fee) AS average_fee
FROM Doctors;
#Q24
SELECT MAX(treatment_cost) AS highest_cost
FROM Appointments;
#Q25
SELECT MIN(treatment_cost) AS lowest_cost
FROM Appointments;
#Q26
SELECT SUM(treatment_cost) AS Collected_Amount
FROM Appointments ;
#Q27
SELECT AVG(treatment_cost) AS average_treatment_cost 
FROM Appointments ; 
SELECT AVG(treatment_cost) AS average_treatment_cost
FROM Appointments
WHERE status = 'Completed';
#Q28
SELECT COUNT(*) AS completed_records
FROM Appointments ;
#Q29
SELECT AVG(age) AS AVG_AGE_PATIENTS
FROM Patients ; 
#Q30
SELECT SUM(treatment_cost) AS insurance_revenue
FROM Appointments
WHERE payment_mode = 'Insurance';

#GROUP BY & HAVING (Questions 31–40)(AI)
#Q31
SELECT city
FROM Patients
GROUP BY city;
#Q32
SELECT 
    d.department_name,
    AVG(doc.consultation_fee) AS average_consultation_fee
FROM Doctors doc
JOIN Departments d
    ON doc.department_id = d.department_id
GROUP BY d.department_name;
#Q34
SELECT 
    d.doctor_name,
    SUM(a.treatment_cost) AS total_treatment_revenue
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name;
#Q35 
SELECT COUNT(*)  AS Appointments_handled_bdoctors
WHERE d.doctor_id
GROUP BY  Appointments ; 
SELECT 
    d.doctor_name,
    COUNT(a.appointment_id) AS appointments_handled
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name;
#Q35
SELECT 
    d.department_name,
    COUNT(doc.doctor_id) AS total_doctors
FROM Departments d
JOIN Doctors doc
    ON d.department_id = doc.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(doc.doctor_id) > 1;
#Q36
SELECT city, COUNT(*) AS total_patients
FROM Patients
GROUP BY city
HAVING COUNT(*) > 2;
#Q37
SELECT 
    payment_mode,
    AVG(treatment_cost) AS average_treatment_cost
FROM Appointments
GROUP BY payment_mode;
#Q38
SELECT 
    d.department_name,
    SUM(a.treatment_cost) AS total_revenue
FROM Departments d
JOIN Doctors doc
    ON d.department_id = doc.department_id
JOIN Appointments a
    ON doc.doctor_id = a.doctor_id
GROUP BY d.department_id, d.department_name;
#Q39
SELECT 
    d.doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name
HAVING COUNT(a.appointment_id) > 4;
#Q40
SELECT 
    d.doctor_name,
    AVG(a.rating) AS average_rating
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name;

#Business Analysis (Questions 41–45)(AI)
#Q41
SELECT 
    city,
    COUNT(*) AS patient_count
FROM Patients
GROUP BY city
ORDER BY patient_count DESC
LIMIT 1;
#Q42
SELECT 
    d.doctor_name,
    SUM(a.treatment_cost) AS total_revenue
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name
ORDER BY total_revenue DESC
LIMIT 1;
#Q43
SELECT 
    d.department_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Departments d
JOIN Doctors doc
    ON d.department_id = doc.department_id
JOIN Appointments a
    ON doc.doctor_id = a.doctor_id
GROUP BY d.department_id, d.department_name
ORDER BY total_appointments DESC
LIMIT 1;
#Q44
SELECT 
    p.patient_name,
    COUNT(a.appointment_id) AS total_visits
FROM Patients p
JOIN Appointments a
    ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.patient_name
ORDER BY total_visits DESC
LIMIT 1;
#Q45
SELECT 
    disease,
    COUNT(*) AS treatment_count
FROM Appointments
GROUP BY disease
ORDER BY treatment_count DESC
LIMIT 1;

#Challenge Questions (Questions 46–50)(AI)

#Q46
SELECT 
    p.patient_name,
    COUNT(DISTINCT a.doctor_id) AS doctor_count
FROM Patients p
JOIN Appointments a
    ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(DISTINCT a.doctor_id) > 1;
#Q47
SELECT 
    d.doctor_name,
    MIN(a.rating) AS lowest_rating
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
WHERE a.status = 'Completed'
GROUP BY d.doctor_id, d.doctor_name
HAVING MIN(a.rating) >= 4;
#Q48
SELECT 
    d.doctor_name,
    COUNT(DISTINCT a.patient_id) AS unique_patients
FROM Doctors d
JOIN Appointments a
    ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.doctor_name
ORDER BY unique_patients DESC
LIMIT 1;
#Q49
SELECT 
    d.department_name,
    AVG(a.treatment_cost) AS department_avg
FROM Departments d
JOIN Doctors doc
    ON d.department_id = doc.department_id
JOIN Appointments a
    ON doc.doctor_id = a.doctor_id
GROUP BY d.department_id, d.department_name
HAVING AVG(a.treatment_cost) > (
    SELECT AVG(treatment_cost)
    FROM Appointments
);

#Q50
SELECT 
    p.patient_name,
    COUNT(a.appointment_id) AS total_visits,
    SUM(a.treatment_cost) AS total_treatment_cost
FROM Patients p
JOIN Appointments a
    ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.patient_name
HAVING COUNT(a.appointment_id) >= 3
   AND SUM(a.treatment_cost) > 10000;

