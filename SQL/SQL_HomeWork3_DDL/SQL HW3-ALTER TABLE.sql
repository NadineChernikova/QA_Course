-- 5. �������� ������� Materials. �������� ���� suplier_id ������� ������� � ����� id � ������� Suppliers

ALTER TABLE materials ADD suplier_id int;

ALTER TABLE materials 
ADD FOREIGN KEY (suplier_id) REFERENCES suppliers(id);

-- 6. �������� ������� Employees. �������� varchar ���� surname �� 50 ��������.

ALTER TABLE employees ADD surname varchar(50);

--  7. �������� ������� Salary. �������� varchar ���� currency �� 7 ��������.

ALTER TABLE salary ADD currency varchar(7);


