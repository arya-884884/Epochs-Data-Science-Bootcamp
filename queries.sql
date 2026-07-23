-- 1. Top 10 Selling Products by Quantity Sold
SELECT 
    p.ProductID, 
    p.ProductName, 
    SUM(od.Quantity) AS TotalQuantitySold,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue
FROM Products p
JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalQuantitySold DESC
LIMIT 10;

-- 2. Top 10 Customers by Revenue
SELECT 
    c.CustomerID, 
    c.CompanyName, 
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY TotalSpent DESC
LIMIT 10;

-- 3. Monthly Sales Trends
SELECT 
    strftime('%Y-%m', o.OrderDate) AS YearMonth,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS MonthlyRevenue
FROM Orders o
JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY YearMonth
ORDER BY YearMonth ASC;

-- 4. Best-Performing Product Categories
SELECT 
    cat.CategoryID, 
    cat.CategoryName, 
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalCategoryRevenue
FROM Categories cat
JOIN Products p ON cat.CategoryID = p.CategoryID
JOIN [Order Details] od ON p.ProductID = od.ProductID
GROUP BY cat.CategoryID, cat.CategoryName
ORDER BY TotalCategoryRevenue DESC;

-- 5. Customer Purchase Frequency
SELECT 
    c.CustomerID, 
    c.CompanyName, 
    COUNT(o.OrderID) AS OrderFrequency
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
ORDER BY OrderFrequency DESC;