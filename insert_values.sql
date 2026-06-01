use Hospital_Analytics;
--departments data
INSERT INTO DEPARTMENTS (DEPARTMENT_NAME, FLOOR_NO) VALUES
('Cardiology',1),
('Neurology',2),
('Orthopedics',3),
('Pediatrics',4),
('Dermatology',5),
('ENT',6),
('Oncology',7),
('Radiology',8),
('Emergency',9),
('General Surgery',10);

--doctors data
INSERT INTO DOCTORS (DOCTOR_NAME, DEPARTMENT_ID, SPECIALIZATION, PHONE, EXPERIENCE) VALUES
('Arun Kumar',301,'Cardiologist',9876543210,10),
('Priya Sharma',302,'Neurologist',9876543211,8),
('Vignesh Ravi',303,'Orthopedic Surgeon',9876543212,12),
('Sneha Patel',304,'Pediatrician',9876543213,6),
('Rahul Verma',305,'Dermatologist',9876543214,9),
('Karthik Raj',306,'ENT Specialist',9876543215,7),
('Meena Iyer',307,'Oncologist',9876543216,11),
('Ajay Singh',308,'Radiologist',9876543217,5),
('Divya Nair',309,'Emergency Physician',9876543218,4),
('Suresh Babu',310,'General Surgeon',9876543219,13),
('Anitha Roy',301,'Cardiologist',9876543220,14),
('Ramesh Das',302,'Neurologist',9876543221,15),
('Keerthana',303,'Orthopedic Specialist',9876543222,3),
('Mohit Jain',304,'Child Specialist',9876543223,9),
('Sweetha',305,'Skin Specialist',9876543224,10);

--patients data
INSERT INTO PATIENTS (PATIENT_NAME, GENDER, AGE, PHONE, BLOOD_GROUP, ADDRESS) VALUES
('Vijay','Male',22,9123456780,'O+','Chennai'),
('Arun','Male',35,9123456781,'A+','Coimbatore'),
('Priya','Female',29,9123456782,'B+','Madurai'),
('Sneha','Female',41,9123456783,'AB+','Salem'),
('Kumar','Male',50,9123456784,'O-','Trichy'),
('Divya','Female',31,9123456785,'A-','Erode'),
('Ravi','Male',26,9123456786,'B-','Tirunelveli'),
('Meena','Female',38,9123456787,'O+','Karur'),
('Suresh','Male',45,9123456788,'AB-','Namakkal'),
('Anitha','Female',27,9123456789,'A+','Vellore'),
('Karthik','Male',33,9123456790,'B+','Dindigul'),
('Niranjani','Female',55,9123456791,'O+','Thoothukudi'),
('Hari','Male',24,9123456792,'A+','Chennai'),
('Pooja','Female',30,9123456793,'B+','Madurai'),
('Ganesh','Male',48,9123456794,'AB+','Coimbatore');

--Appointments data
INSERT INTO APPOINTMENTS (PATIENT_ID, DOCTOR_ID, APPOINTMENT_DATE, APPOINTMENT_TIME, STATUS) VALUES
(1,401,'2026-05-01','10:00:00','Completed'),
(2,402,'2026-05-02','11:00:00','Completed'),
(3,403,'2026-05-03','12:00:00','Pending'),
(4,404,'2026-05-04','09:30:00','Completed'),
(5,405,'2026-05-05','02:00:00','Cancelled'),
(6,406,'2026-05-06','03:00:00','Completed'),
(7,407,'2026-05-07','04:00:00','Pending'),
(8,408,'2026-05-08','01:00:00','Completed'),
(9,409,'2026-05-09','11:30:00','Completed'),
(10,410,'2026-05-10','05:00:00','Pending'),
(11,411,'2026-05-11','10:15:00','Completed'),
(12,412,'2026-05-12','12:30:00','Cancelled'),
(13,413,'2026-05-13','02:45:00','Completed'),
(14,414,'2026-05-14','03:15:00','Pending'),
(15,415,'2026-05-15','09:00:00','Completed');


--Billing data
INSERT INTO BILLING (PATIENT_ID, TOTAL_AMOUNT, BILL_DATE, PAYMENT_STATUS) VALUES
(1,2500,'2026-05-01','Paid'),
(2,3200,'2026-05-02','Paid'),
(3,1800,'2026-05-03','Pending'),
(4,4500,'2026-05-04','Paid'),
(5,2100,'2026-05-05','Pending'),
(6,3900,'2026-05-06','Paid'),
(7,1200,'2026-05-07','Pending'),
(8,5100,'2026-05-08','Paid'),
(9,2800,'2026-05-09','Paid'),
(10,3400,'2026-05-10','Pending'),
(11,4200,'2026-05-11','Paid'),
(12,2600,'2026-05-12','Pending'),
(13,1500,'2026-05-13','Paid'),
(14,3100,'2026-05-14','Paid'),
(15,4700,'2026-05-15','Pending');

-=Payments data
INSERT INTO PAYMENTS (BILL_ID, PAYMENT_DATE, PAYMENT_METHOD, AMOUNT_PAID) VALUES
(1501,'2026-05-01','UPI',2500),
(1502,'2026-05-02','Card',3200),
(1503,'2026-05-03','Cash',1000),
(1504,'2026-05-04','UPI',4500),
(1505,'2026-05-05','Card',1000),
(1506,'2026-05-06','Cash',3900),
(1507,'2026-05-07','UPI',1200),
(1508,'2026-05-08','Card',5100),
(1509,'2026-05-09','Cash',2800),
(1510,'2026-05-10','UPI',1500),
(1511,'2026-05-11','Card',4200),
(1512,'2026-05-12','Cash',1200),
(1513,'2026-05-13','UPI',1500),
(1514,'2026-05-14','Card',3100),
(1515,'2026-05-15','Cash',2000);

--Medicines data
INSERT INTO MEDICINES (MEDICINE_NAME, PRICE, STOCK_QUANTITY) VALUES
('Paracetamol',25,500),
('Amoxicillin',80,300),
('Vitamin C',50,200),
('Ibuprofen',40,250),
('Cetirizine',35,180),
('Azithromycin',120,100),
('Metformin',90,150),
('Insulin',350,80),
('Omeprazole',60,220),
('Dolo 650',30,400),
('Cough Syrup',110,90),
('Calcium Tablet',70,160),
('Antacid',45,140),
('Pain Relief Spray',150,60),
('ORS Powder',20,300);

--Prescriptions data
INSERT INTO PRESCRIPTIONS (PATIENT_ID, PRESCRIPTION_DATE, NOTES) VALUES
(1,'2026-05-01','Fever treatment'),
(2,'2026-05-02','Migraine treatment'),
(3,'2026-05-03','Bone pain'),
(4,'2026-05-04','Child fever'),
(5,'2026-05-05','Skin allergy'),
(6,'2026-05-06','ENT infection'),
(7,'2026-05-07','Cancer consultation'),
(8,'2026-05-08','X-ray review'),
(9,'2026-05-09','Emergency treatment'),
(10,'2026-05-10','Surgery follow-up');

--Prescription_medicines data
INSERT INTO PRESCRIPTION_MEDICINES (PRESCRIPTION_ID, MEDICINE_ID, DOSAGE, DAYS) VALUES
(601,701,'500mg',5),
(601,702,'250mg',3),
(602,703,'1 tablet',7),
(603,704,'400mg',5),
(604,705,'10ml',4),
(605,706,'500mg',6),
(606,707,'1 tablet',10),
(607,708,'5 units',15),
(608,709,'20mg',5),
(609,710,'650mg',3),
(610,711,'15ml',7),
(601,712,'1 tablet',10),
(602,713,'2 tablets',5),
(603,714,'Spray twice',7),
(604,715,'1 packet',3);

--Rooms data
INSERT INTO ROOMS (ROOM_TYPE, ROOM_CHARGE, AVAILABILITY_STATUS) VALUES
('General',1000,'Available'),
('ICU',5000,'Occupied'),
('Private',3000,'Available'),
('Deluxe',4000,'Occupied'),
('General',1000,'Available'),
('ICU',5500,'Available'),
('Private',3200,'Occupied'),
('General',1200,'Available'),
('Deluxe',4500,'Occupied'),
('Private',3500,'Available');

--Admissions data
INSERT INTO ADMISSIONS (PATIENT_ID, ROOM_ID, ADMISSION_DATE, DISCHARGE_DATE) VALUES
(1,1201,'2026-05-01','2026-05-05'),
(2,1202,'2026-05-02','2026-05-06'),
(3,1203,'2026-05-03','2026-05-07'),
(4,1204,'2026-05-04','2026-05-08'),
(5,1205,'2026-05-05','2026-05-09'),
(6,1206,'2026-05-06','2026-05-10'),
(7,1207,'2026-05-07','2026-05-11'),
(8,1208,'2026-05-08','2026-05-12'),
(9,1209,'2026-05-09','2026-05-13'),
(10,1210,'2026-05-10','2026-05-14');

-Lab_tests data
INSERT INTO LAB_TESTS (PATIENT_ID, DOCTOR_ID, TEST_NAME, TEST_DATE, TEST_RESULT) VALUES
(1,401,'Blood Test','2026-05-01','Normal'),
(2,402,'MRI Scan','2026-05-02','Abnormal'),
(3,403,'X-Ray','2026-05-03','Normal'),
(4,404,'CBC','2026-05-04','Normal'),
(5,405,'Allergy Test','2026-05-05','Positive'),
(6,406,'Hearing Test','2026-05-06','Normal'),
(7,407,'CT Scan','2026-05-07','Observation Needed'),
(8,408,'Ultrasound','2026-05-08','Normal'),
(9,409,'ECG','2026-05-09','Abnormal'),
(10,410,'Sugar Test','2026-05-10','High');

--Insurance data
INSERT INTO INSURANCE (PATIENT_ID, PROVIDER_NAME, POLICY_NAME, COVERAGE_AMOUNT) VALUES
(1,'Star Health','Gold Plan',500000),
(2,'HDFC Ergo','Silver Plan',300000),
(3,'ICICI Lombard','Premium Plan',700000),
(4,'Care Insurance','Basic Plan',200000),
(5,'Bajaj Allianz','Gold Plan',450000),
(6,'Star Health','Silver Plan',350000),
(7,'HDFC Ergo','Premium Plan',800000),
(8,'Care Insurance','Gold Plan',600000),
(9,'ICICI Lombard','Silver Plan',400000),
(10,'Bajaj Allianz','Basic Plan',250000);

--Nurses data
INSERT INTO NURSES (NURSE_NAME, DEPARTMENT_ID, SHIFT) VALUES
('Anjali',301,'Morning'),
('Priyanka',302,'Night'),
('Meera',303,'Evening'),
('Sathya',304,'Morning'),
('Deepika',305,'Night'),
('Kavitha',306,'Evening'),
('Nisha',307,'Morning'),
('Harini',308,'Night'),
('Aarthi',309,'Evening'),
('Shalini',310,'Morning');

--Staffs data
INSERT INTO STAFFS (STAFF_NAME, ROLE, SALARY, DEPARTMENT_ID) VALUES
('Ravi','Receptionist',25000,301),
('Kumar','Accountant',35000,302),
('Manoj','Cleaner',18000,303),
('Sanjay','Security',22000,304),
('Vimal','Technician',30000,305),
('Lokesh','Pharmacist',40000,306),
('Aravind','Receptionist',26000,307),
('Madhan','Technician',32000,308),
('Saravanan','Security',24000,309),
('Prakash','Cleaner',19000,310);