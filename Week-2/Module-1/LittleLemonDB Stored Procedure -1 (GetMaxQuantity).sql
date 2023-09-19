CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
DECLARE maxq INT Default 0;
SELECT
MAX(Quantity) INTO maxq
FROM Orders;
SELECT maxq AS "Maximum Quantity in Order";
END