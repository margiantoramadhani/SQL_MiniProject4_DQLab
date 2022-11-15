select 
  product_id, 
  avg(pinalty), 
  count(customer_id) as total 
from 
  invoice 
group by 
  product_id 
  having 
  count(customer_id) >20;