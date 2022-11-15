### Fundamental SQL Group By and Having
Source : https://academy.dqlab.id/main/package/practice/291?pf=0

----

#### Sample of Dataset Project

<details>
<summary markdown="span">invoice</summary>

| invoice_id | invoice_code  | customer_id | invoice_date        | product_id | total_price | pinalty  |
|------------|---------------|-------------|---------------------|------------|-------------|----------|
|          1 | INV-43378-1   |           1 | 2018-10-05 00:00:00 |      10001 |      100000 | NULL     |
|          2 | INV-43379-2   |           2 | 2018-10-06 00:00:00 |      10001 |      100000 | NULL     |
|          3 | INV-43380-3   |           3 | 2018-10-07 00:00:00 |      10003 |      300000 | NULL     |
|          4 | INV-43381-4   |           4 | 2018-10-08 00:00:00 |      10001 |      100000 | NULL     |
|          5 | INV-43382-5   |           5 | 2018-10-09 00:00:00 |      10003 |      300000 | NULL     |

</details>

----

#### Mini Quiz - Penggunaan MAX, MIN dan AVG dalam Having
Sekarang untuk lebih mengerti tentang penggunaan Having, mari kita coba selesaikan soal berikut.</br>
Lakukan query untuk dapat mengeluarkan product_id, rata-rata nilai pinalty dan jumlah customer_id yang di group by berdasarkan product_id
yang memiliki jumlah customer_id diatas nilai 20.

```sql
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
```

<details>
<summary markdown="span">OUTPUT :</summary>

| product_id | avg(pinalty)       | total |
|------------|--------------------|-------|
|      10002 | 26136.363636363636 |    86 |
|      10003 |              31500 |    51 |
|      10004 |              52000 |    34 |

</details>
