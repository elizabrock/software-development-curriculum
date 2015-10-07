## Fix the table

> ALTER TABLE [Order Details] RENAME TO OrderDetails;

## The Queries

Find the names of all “sales representatives” who work in London.

> SELECT FirstName, Title, City FROM Employees WHERE Title = 'Sales Representative' AND City = 'London';

Find the name of the female "sales representative" who work in London and report to the Sales Manager Mr. Steven Buchanan. (Please do not enter any criterion under the "ReportsTo" field when answering this query.)

> SELECT FirstName, LastName FROM Employees WHERE Title = 'Sales Representative' AND City = 'London' AND TitleOfCourtesy IN ("Mrs.","Ms.");

Find the name of the employees who work in London and report to the Sales Manager Mr. Steven Buchanan. (Please do not enter any criterion under the "ReportsTo" field when answering this query.)

> SELECT Employees.FirstName, Employees.LastName, Managers.FirstName, Managers.LastName FROM Employees INNER JOIN Employees Managers
 ON Employees.ReportsTo = Managers.EmployeeID
 WHERE Employees.City = 'London' AND Managers.LastName = 'Buchanan' AND Managers.FirstName = 'Steven';

Find the names and addresses of all the suppliers which can provide “tofu”.  (Note: You should be able to find two companies.)

> SELECT Suppliers.CompanyName, Suppliers.Address FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID WHERE Products.ProductName LIKE '%Tofu%'

List the sales for orders shipped to France.

> SELECT * FROM Orders WHERE ShipCountry = 'France';

Find the products on order from companies based in the UK.

Interpretation 1: Based on Products Ordered

> SELECT Products.ProductName FROM Products
  INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
  WHERE Suppliers.Country = 'UK'

Interpretation 2: Based on Products On Order, and customer countries

> SELECT Products.ProductName FROM Products
  INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
  JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
  JOIN Customers ON Orders.CustomerID = Customers.CustomerID
  WHERE Customers.Country = 'UK' AND Products.UnitsOnOrder > 0

Interpretation 3: Based on Supplier Country and Products.UnitsOnOrder

> SELECT Products.ProductName FROM Products
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
  WHERE Suppliers.Country = 'UK' AND Products.UnitsOnOrder > 0

Going back to interpretation 3, we want each product once.  What do we change?

> SELECT DISTINCT Products.ProductName FROM Products
  INNER JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
  INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
  WHERE Suppliers.Country = 'UK'

List all the orders taken by the sales representative Anne Dodsworth from the companies based in London along with the unit price and quantity of each order.

Attempt One:

> SELECT OrderDetails.OrderID, Employees.EmployeeID, OrderDetails.ShipCity, OrderDetails.ProductID, OrderDetails.UnitPrice, OrderDetails.Quantity
  FROM OrderDetails
  INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
  WHERE Orders.EmployeeID = 9 AND OrderDetails.ShipCity = 'London'

Refined:

> SELECT OrderDetails.ProductID, OrderDetails.OrderID, OrderDetails.UnitPrice, OrderDetails.Quantity, Orders.ShipCity, Customers.City AS CustomerCity
  FROM OrderDetails
  INNER JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
  INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
  INNER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
  WHERE Customers.City = 'London' AND Employees.FirstName = 'Anne' AND Employees.LastName = 'Dodsworth'
