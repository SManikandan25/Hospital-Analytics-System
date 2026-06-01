use  Hospital_Analytics;
--Q1 Create a procedure to display all patients.
DELIMITER //
CREATE PROCEDURE GET_ALL_PATIENTS()
BEGIN
    SELECT * FROM PATIENTS;
END//
DELIMITER ;

CALL GET_ALL_PATIENTS();
--Q2 Create a procedure to display doctors whose experience is greater than 10.

DELIMITER //
CREATE Procedure experienced_doctors()
BEGIN
   SELECT * FROM DOCTORS 
   WHERE EXPERIENCE > 10;
END//
DELIMITER ;

CALL experienced_doctors();

==Q3 Create a procedure that accepts department id and displays doctors from that department.
DELIMITER //
CREATE Procedure get_doctors_by_department(IN d_DEPARTMENT_iD INT)
BEGIN 
 SELECT * FROM DOCTORS
 WHERE DEPARTMENT_ID = d_DEPARTMENT_ID;
END//
DELIMITER ;

CALL get_doctors_by_department(301);

--Q4 Create a procedure to display billing details where total amount is LESSER than given amount.
DELIMITER //
CREATE PROCEDURE high_billing( IN given_amount DECIMAL(10,2) )
BEGIN
   SELECT *
   FROM billing
   WHERE total_amount > given_amount;
END //
DELIMITER ;
CALL high_billing(5000);
--Q5 Create a procedure to display patient name, doctor name, and appointment date.
DELIMITER //
CREATE Procedure  appointment_details()
BEGIN 
    SELECT P.PATIENT_NAME,D.DOCTOR_NAME,A.APPOINTMENT_DATE 
    FROM APPOINTMENTS AS A
    JOIN PATIENTS AS P ON P.PATIENT_ID = A.PATIENT_ID
    JOIN DOCTORS AS D ON D.DOCTOR_ID = A.DOCTOR_ID;
END//
DELIMITER ;
CALL appointment_details();
