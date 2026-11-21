
-- этап четыре --
SELECT u.id, u.full_name, r.name AS role
FROM users u
JOIN roles r ON r.id = u.role_id
WHERE u.login = '94d5ous@gmail.com' AND u.password = 'uzWC67';

-- этап пять --
SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
       p.description, p.photo,
       c.name AS category, 
       m.name AS manufacturer, 
       s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id; 

-- этап шесть --
SELECT p.id, p.article, p.name, p.price, p.stock_qty, s.name AS supplier
FROM products p
JOIN suppliers s ON s.id = p.supplier_id 
WHERE p.name LIKE '%Туфли%' AND p.supplier_id = 1
ORDER BY p.stock_qty DESC;

-- этап семь --
SELECT id, name FROM categories;
SELECT id, name FROM manufacturers;
SELECT id, name FROM suppliers;

-- этап семь --

INSERT INTO products
  (article, name, unit, price, discount, stock_qty, description, photo, category_id, manufacturer_id, supplier_id)
VALUES ('TEST01', 'Кроссовки тестовые', 'шт.', 3500.00, 0, 10, 'Описание для теста', 'test.jpg', 2, 3, 1);

-- этап семь --

SELECT * FROM products WHERE id = 1;
-- этап семь --

UPDATE products
SET article='А112Т4', name='Ботинки', unit='шт.', price=5500.00, discount=3, stock_qty=5, description='Женские Ботинки демисезонные kari', photo='1.jpg',
    category_id=1, manufacturer_id=1, supplier_id=1
WHERE id = 1;
-- этап восемь --

SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE product_id = 1;
-- этап восемь --

DELETE FROM products WHERE id = 30;