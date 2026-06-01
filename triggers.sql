use  Hospital_Analytics;

--Q1 Create a trigger to prevent inserting negative room charges in Rooms table.
DELIMITER //
CREATE TRIGGER check_room_charge
BEFORE INSERT ON rooms
FOR EACH ROW
BEGIN
   IF NEW.room_charge < 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Room charge cannot be negative';   
   END IF;
END //
DELIMITER ;

--Q2 Create a trigger that automatically updates room availability to 'Occupied' after a new admission.
DELIMITER //
CREATE TRIGGER update_room_status
AFTER INSERT ON admissions
FOR EACH ROW
BEGIN
   UPDATE rooms
   SET availability_status = 'Occupied'
   WHERE room_id = NEW.room_id;
END //
DELIMITER ;

--Q3 Create a trigger to prevent updating medicine stock quantity to negative values.
DELIMITER //
CREATE TRIGGER check_stock_update
BEFORE UPDATE ON medicines
FOR EACH ROW
BEGIN
   IF NEW.stock_quantity < 0 THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Stock quantity cannot be negative';
   END IF;
END //
DELIMITER ;

--Q4 Create a trigger to automatically delete payment records when corresponding billing record is deleted
DELIMITER //
CREATE TRIGGER delete_payment_trigger
AFTER DELETE ON billing
FOR EACH ROW
BEGIN
   DELETE FROM payments
   WHERE bill_id = OLD.bill_id;
END //
DELIMITER ;

--Q5 Create a trigger to prevent inserting future appointment dates.
DELIMITER //
CREATE TRIGGER check_appointment_date
BEFORE INSERT ON appointments
FOR EACH ROW
BEGIN
   IF NEW.appointment_date > CURDATE() THEN
      SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Future appointment dates are not allowed';
   END IF;
END //
DELIMITER ;