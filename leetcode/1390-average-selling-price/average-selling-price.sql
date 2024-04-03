select a.product_id, if(b.units is null, 0, round(sum(a.price * b.units)/sum(units), 2)) average_price
from Prices a left join UnitsSold b on a.product_id = b.product_id
where (b.purchase_date between a.start_date and a.end_date) or (b.units is null)
group by a.product_id
