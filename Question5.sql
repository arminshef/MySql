select SUM(product_profit_percent), SUM(product_profit_price)
from (
    select Product, SUM(P*Quantity) as product_profit_percent, SUM(P*Quantity*UnitPrice/100) as product_profit_price
from (select Sales.Product,Sales.UnitPrice,Sales.Quantity, Profit.ProfitRatio as P
from Sales 
INNER Join Profit ON Sales.Product = Profit.Product) as T
group by Product
) as T