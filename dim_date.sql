CREATE TABLE dim_date
WITH waktu AS (SELECT distinct str_to_date(tanggal,'%d/%m/%y') as tanggal
			   FROM penjualan
               WHERE IFNULL(tanggal,'')!= '')
SELECT 
	tanggal AS date,
	day(tanggal) AS day,
    dayname(tanggal) AS day_name,
    month(tanggal) AS month,
    monthname(tanggal) AS month_name,
    year(tanggal) AS year,
    quarter(tanggal) AS quarter
FROM waktu
ORDER BY date;

