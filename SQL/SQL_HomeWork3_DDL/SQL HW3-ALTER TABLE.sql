-- 5. Обновить таблицу Materials. Добавить поле suplier_id которое связано с полем id в таблице suppliers

ALTER TABLE materials ADD suplier_id int;

ALTER TABLE materials 
ADD FOREIGN KEY (suplier_id) REFERENCES suppliers(id);

--  6. Обновить таблицу Employees. Добавить varchar поле surname на 50 символов.

ALTER TABLE employees ADD surname varchar(50);

--  7. Обновить таблицу Salary. Добавить varchar поле currency на 7 символов.

ALTER TABLE salary ADD currency varchar(7);


