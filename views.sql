use  Hospital_Analytics;
--Q1 Create a view to display patient details.

CREATE VIEW patient_view AS
SELECT *
FROM patients;

select * from patient_view;
--Q2 Create a view showing patient name, doctor name, and appointment date.

CREATE VIEW  appointment_view AS 
SELECT P.PATIENT_NAME,D.DOCTOR_NAME,A.APPOINTMENT_DATE 
FROM APPOINTMENTS AS A
JOIN PATIENTS AS P ON P.PATIENT_ID = A.PATIENT_ID
JOIN DOCTORS AS D ON D.DOCTOR_ID =A.DOCTOR_ID;

SELECT * FROM  appointment_view;

--Q3 Create a view showing patient name and total bill amount.

CREATE VIEW  billing_view AS 
SELECT P.PATIENT_NAME,B.TOTAL_AMOUNT
FROM BILLING AS B
JOIN PATIENTS AS P ON P.PATIENT_ID = B.PATIENT_ID;

SELECT * FROM billing_view;

--Q4Create a view displaying doctor name and department name.

CREATE VIEW doctor_department_view AS
SELECT D.DOCTOR_NAME,DP.DEPARTMENT_NAME
FROM DEPARTMENTS AS DP
JOIN DOCTORS AS D ON D.DEPARTMENT_ID = DP.DEPARTMENT_ID;

SELECT * FROM doctor_department_view;
--Q5Create a view showing payment method and total amount paid.

CREATE VIEW payment_summary_view AS
SELECT payment_method,
       SUM(amount_paid) AS total_amount_paid
FROM payments
GROUP BY payment_method;

SELECT * FROM PAYMENT_SUMMARY_VIEW;