CREATE TABLE dim_customer
SELECT 
	id_customer,
	nama,
	level,
	p.group AS store_type,
	cabang_sales
FROM pelanggan p
WHERE 
	 IFNULL(id_customer,'')!= ''
     AND IFNULL(nama,'')!= ''
