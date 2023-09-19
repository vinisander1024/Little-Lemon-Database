CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN id INT)
BEGIN
IF id = ANY(SELECT OrderID FROM Orders) THEN
	DELETE FROM Orders WHERE OrderID = id;
	SELECT CONCAT("Order ", id, " is cancelled.") AS Confirmation;
ELSE
	SELECT CONCAT("Order ", id, " doesnot exist.") AS Message;

END IF;
END