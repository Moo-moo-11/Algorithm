select a.product_id, if(b.new_price is null, 10, b.new_price) price
from (select distinct product_id from Products) a left join
(select product_id, new_price from Products
where (product_id, change_date) in (select product_id, max(change_date) change_date
                                  from Products
                                  where change_date <= '2019-08-16'
                                  group by product_id) ) b
on a.product_id = b.product_id
