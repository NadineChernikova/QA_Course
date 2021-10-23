--�������� �������, �� ��������� �������:
--1. ����� ���������� ������� ���� ��������� (9465)
SELECT count(order_id) FROM orders; 

--2. ����� ���������� ������� ��������� � ��������� �������� (1) 

--SELECT * FROM product p ;
--SELECT * FROM category ;

SELECT count(p.product)
FROM product p 
JOIN category c 
ON p.category_id = c.category_id
WHERE category = '�������';


--3. � ����� ��������� ��������� ������ ����� ������� (������ - 64)
SELECT count(p.product) AS amount, c.category
FROM product p 
JOIN category c 
ON p.category_id = c.category_id
GROUP BY c.category
ORDER BY amount DESC;


--4. ������� ��������� ������ Williams Linda? (3)

SELECT CONCAT (last_name, ' ', first_name) AS customer_name, opl.amount, p.product
FROM customer c 
JOIN orders o 
ON c.customer_id = o.customer_id 
JOIN order_product_list opl 
ON o.order_id = opl.order_id 
JOIN product p 
ON opl.product_id = p.product_id 
WHERE last_name = 'Williams' AND first_name = 'Linda' AND p.product = '��������';


--5. � ��� ����� Williams Linda? (Mitchell Janet)

SELECT CONCAT (s.last_name, ' ', s.first_name) AS s_name, address  
FROM customer c
JOIN address a
ON c.address_id = a.address_id 
JOIN staff s 
ON a.address_id = s.address_id 
WHERE c.last_name = 'Williams' AND c.first_name = 'Linda'
ORDER BY s_name DESC;


--�� ���������� �������� ���������� ������ ���� � ��������� ����.