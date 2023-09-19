SELECT 
Customers.CustomerID, Customers.CustomerName AS FullName, Orders.OrderID, Orders.TotalCost AS Cost, Menus.MenuName, MenuItems.CourseName, MenuItems.Starters
FROM Customers
INNER JOIN Orders ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Menus ON Menus.MenuID = Orders.MenuID
INNER JOIN MenuItems ON MenuItems.MenuItemID = Menus.MenuItemID
ORDER BY Cost ASC;