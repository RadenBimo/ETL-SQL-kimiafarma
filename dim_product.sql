CREATE TABLE dim_product
SELECT 
	kode_barang AS id_product,
	nama_barang AS product_name,
	nama_tipe,
	lini AS brand,
	kemasan
FROM kimia_farma.barang
WHERE 
	IFNULL(kode_barang,'')!= ''
	AND IFNULL(nama_barang,'')!= '';