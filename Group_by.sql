SELECT CategoryID, SUM(Price), COUNT(Price), AVG(Price) FROM Products
GROUP BY CategoryID;