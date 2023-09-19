CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `orders_view` AS
    SELECT 
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Quantity` AS `Quantity`,
        `orders`.`TotalCost` AS `TotalCost`
    FROM
        `orders`
    WHERE
        (`orders`.`Quantity` > 2)