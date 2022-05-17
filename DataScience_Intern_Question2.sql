/* Question 1 */

SELECT COUNT(*) as total_shipment_speedexpress
FROM Shippers as s
LEFT JOIN Orders as o
ON s.ShipperID = o.ShipperID
Where ShipperName = "Speedy Express"

/* Question 2 */

FROM Employees as e
LEFT JOIN Orders as o
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY num_of_orders DESC
LIMIT 1

/* Question 3 */

SELECT p.ProductName, SUM(Quantity) AS TotalQuantity
FROM Orders AS o, OrderDetails AS od, Customers AS c, Products AS p
WHERE c.Country = "Germany" AND od.OrderID = o.OrderID AND od.ProductID = p.ProductID AND c.CustomerID = o.CustomerID
GROUP BY p.ProductID
ORDER BY TotalQuantity DESC
LIMIT 1;
