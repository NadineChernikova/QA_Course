-- 2. Заполните таблицы данными. Не менее 10 строк в каждой таблице

INSERT INTO employees (id, employee_name) VALUES (DEFAULT, 'Nikita Klimov');

INSERT INTO roles (id, role_title) VALUES (DEFAULT, 'Mechanic');

INSERT INTO employees_roles (id, id_role, id_employee) VALUES (DEFAULT, 11, 8);

INSERT INTO salary (id, monthly_salary) VALUES (DEFAULT, 1300);

INSERT INTO roles_salary (id, id_role, id_salary) VALUES (DEFAULT, 10, 8);

INSERT INTO service (id, service_title, price) VALUES (DEFAULT, 'Engine repair', 250);

INSERT INTO materials (id, material_title, amount, price) VALUES (DEFAULT, 'Engine', 5000, 5);

INSERT INTO claim (id, service_id, employee_id, material_id, claim_date, sales_manager) 
	VALUES (DEFAULT, 10, 1, 1, CURRENT_TIMESTAMP, 4);

-- 4. Добавить 10 строк поставщиков в таблицу Suppliers

INSERT INTO suppliers (id, sup_name) VALUES (DEFAULT, 'Novichek');