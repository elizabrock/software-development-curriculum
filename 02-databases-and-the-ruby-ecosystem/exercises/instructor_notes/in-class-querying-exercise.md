# SQL Queries

These are the basic queries we created as a class, before sending them off on their own to do the queries quiz.  The tasks (e.g. "Show me everything in a table") are used in each cohort, but I pretty sure haven't updated the queries listed here since cohort 1's version of the database.

## In Class:

Show me everything in a table:

> SELECT * FROM Categories;

Show me the Categories named "Beverages":

> SELECT * FROM Categories WHERE CategoryName = 'Beverages';

Show me the Categories that start with B:

> SELECT * FROM Categories WHERE CategoryName LIKE 'B%';

Show the productID, the product name, the category id and the category name.

> SELECT ProductID, ProductName, CategoryID FROM PRODUCTS;

<pre>
| ProductID | ProductName    | CategoryID |
| 1         | Candy          | 2          |
| 2         | Captain Morgan | 8          |
</pre>

> SELECT CategoryID, CategoryName FROM Categories;

<pre>
| CategoryID | CategoryName |
| 2          | Food         |
| 3          | Supplies     |
| 8          | Booze        |
</pre>

> SELECT * FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

That gives us too much data :(

> SELECT Products.ProductID, Products.ProductName, Categories.CategoryID, Categories.CategoryName
FROM Products INNER JOIN Categories
  ON Products.CategoryID = Categories.CategoryID;

Alternatively:

> SELECT Products.ProductID, Products.ProductName, Categories.CategoryID, Categories.CategoryName
FROM Products INNER JOIN Categories
  ON Categories.CategoryID = Products.CategoryID;

<pre>
| ProductID | ProductName    | CategoryID | CategoryName |
| 1         | Candy          | 2          | Food         |
| 2         | Captain Morgan | 8          | Booze        |
</pre>

What if I want to see a list of all products and their suppliers?

> SELECT Products.ProductName, Suppliers.CompanyName
FROM Products INNER JOIN Suppliers
  ON Products.SupplierID = Suppliers.SupplierID;

What if I want to see that but in reverse alphabetical order of ProductName?

> SELECT Products.ProductName, Suppliers.CompanyName
FROM Products INNER JOIN Suppliers
  ON Products.SupplierID = Suppliers.SupplierID
  ORDER BY ProductName DESC;

What if I then wanted to see that ordered by Company Name, with the products made by a particular company shown in alphabetical order?

> SELECT Suppliers.CompanyName, Products.ProductName
FROM Products INNER JOIN Suppliers
  ON Products.SupplierID = Suppliers.SupplierID
  ORDER BY CompanyName ASC, ProductName ASC;
