SELECT Product, SUM(Quantity*UnitPrice) As product_quantity , SUM(Quantity) AS product_Price 
from Sales
group by Product