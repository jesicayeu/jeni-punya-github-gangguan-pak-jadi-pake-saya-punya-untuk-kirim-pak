-- 1
CREATE TABLE products (
id INT PRIMARY KEY,
kategori_products VARCHAR(100) NOT NULL,
nama_products VARCHAR(100) NOT NULL,
harga_products VARCHAR(100) NOT NULL,
quentity_products VARCHAR(100) NOT NULL
);

-- 2
INSERT INTO products(id, kategori_products, nama_products, harga_products, quentity_products)
VALUES('0011', 'aksesoris', 'kalung', '25000',50),
('2200', 'minuman', 'cocacola', '7000',50),
('3345', 'pakian', 'celana_wanita', '150000',50),
('5506', 'pakian', 'kameja_pria', '120000',50),
('6621', 'sepatu', 'Sepatu_pria', '200000',50);
SELECT *FROM products;
SELECT AVG(harga_products) FROM products;
SELECT *FROM products WHERE harga_products > 2083666.6666666667;

-- 3
INSERT INTO products(id, kategori_products, nama_products, harga_products, quentity_products)
VALUES('0305', 'Elektronik', 'Laptop_ASUS', '12000000',50);

-- 4
UPDATE products SET quentity_products = 75 WHERE id = 2200;

-- 5
SELECT SUM(quentity_products) AS total_quentity_products FROM products;

-- 6
SELECT * FROM products where quentity_products > 20 AND harga_products < 15000000 ;

-- 7
SELECT * FROM products ORDER BY harga_products ASC ;

-- 8
DELETE FROM products WHERE quentity_products < 10;

-- 9
SELECT (harga_products * quentity_products) AS total_quentity FROM products;

-- 10
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);