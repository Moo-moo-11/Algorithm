select b.product_name, sum(unit) unit
from Orders a left join Products b on a.product_id=b.product_id
where year(a.order_date) = '2020' and month(a.order_date) = '02'
group by b.product_name
having unit >= 100