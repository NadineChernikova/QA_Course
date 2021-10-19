# SQL HomeWork-3


**Подключится к  своей базе данных**
Параметр | Значение 
:-------- | :-------
Host: | 159.69.151.133
Port: | 5056
DB: | qa_db_22_xx
User: | user_22_xx
Pass: | ******



*1. Создайте базу из представленной картинки.*
<details>
  <summary>Схема базы данных</summary>

  ![Схема базы данных](DB-Schema.jpg)
</details>

  + У каждой таблицы должно быть поле id
  + id автоинкрементальный и является первичным ключом

<code>[CREATE TABLE.sql](https://github.com/NadineChernikova/QA_Course/blob/main/SQL/SQL_HomeWork3_DDL/SQL%20HW3-CREATE.sql)
</code>
<details>
  <summary>DBeaver ER Diagram</summary>

  ![Схема базы данных](SQL-HW3-DBDiagram.png)
</details>

*2. Заполните таблицы данными. Не менее 10 строк в каждой таблице*

<code>[INSERT INTO.sql](https://github.com/NadineChernikova/QA_Course/blob/main/SQL/SQL_HomeWork3_DDL/SQL%20HW3-INSERT.sql)
</code>

*3. Добавить таблицу Suppliers с полями id, sup_name*
```sql
CREATE TABLE suppliers (
id serial PRIMARY KEY,
sup_name varchar (50) NOT NULL
);
```
*4. Добавить 10 строк поставщиков в таблицу Suppliers*
```sql
INSERT INTO suppliers (id, sup_name) VALUES (DEFAULT, 'Novichek');
```

*5. Обновить таблицу Materials. Добавить поле suplier_id которое связано с полем id в таблице suppliers*

<code>[ALTER TABLE.sql](https://github.com/NadineChernikova/QA_Course/blob/main/SQL/SQL_HomeWork3_DDL/SQL%20HW3-ALTER%20TABLE.sql)
</code>

```sql
ALTER TABLE materials ADD suplier_id int;

ALTER TABLE materials 
ADD FOREIGN KEY (suplier_id) REFERENCES suppliers(id);
```
*6. Обновить таблицу Employees. Добавить varchar поле surname на 50 символов.*
```sql
ALTER TABLE employees ADD surname varchar(50);
```

*7. Обновить таблицу Salary. Добавить varchar поле currency на 7 символов.*
```sql
ALTER TABLE salary ADD currency varchar(7);
```
