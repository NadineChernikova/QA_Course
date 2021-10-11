# SQL HomeWork-1

```
Подключится к 
Host: 159.69.151.133
Port: 5056
User: user_22_44
Pass: 123
Table: qa_users
```

*1. Вывести все поля и все строки*
```sql
SELECT * FROM qa_users;
```
*2. Вывести всех пользователей в таблице*
```sql
SELECT * FROM qa_users;
```
*3. Вывести только ID пользователей*
```sql
SELECT user_id 
FROM qa_users;
```
*4. Вывести только имена пользователей*
```sql
SELECT username 
FROM qa_users;
```
*5. Вывести только email пользователей*
```sql
SELECT email 
FROM qa_users;
```
*6. Вывести имя и email пользователей*
```sql
SELECT username, email 
FROM qa_users;
```
*7. Вывести id, имя, email и дату создания пользователей*
```sql
SELECT user_id, username, email, created_on
FROM qa_users;
```
*8. Вывести пользователей, где password '12333'*
```sql
SELECT * 
FROM qa_users
WHERE password = '12333';
```
*9. Вывести пользователей, которые были созданы '2021-03-26 00:00:00'*
```sql
SELECT * 
FROM qa_users
WHERE created_on = '2021-03-26 00:00:00';
```
*10. Вывести пользователей, где в имени есть 'Анна'*
```sql
SELECT * 
FROM qa_users
WHERE username LIKE '%Anna%';
```
*11. Вывести пользователей, где в имени в конце есть 8*
```sql
SELECT * 
FROM qa_users
WHERE username LIKE '%8';
```
*12. Вывести пользователей, где в имени в есть буква "а"*
```sql
SELECT * 
FROM qa_users
WHERE username LIKE '%a%';
```
*13. Вывести пользователей, которые были созданы '2021-07-12 00:00:00'*
```sql
SELECT * 
FROM qa_users
WHERE created_on = '2021-07-12 00:00:00';
```
*14. Вывести пользователей, которые были созданы '2021-07-12 00:00:00' и имеют пароль '1m313'*
```sql
SELECT * 
FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND password ='1m313';
```
*15. Вывести пользователей, которые были созданы "2021-07-12 00:00:00" и у которых в имени есть слово "Andrey"*
```sql
SELECT * 
FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND username LIKE '%Andrey%';
```
*16. Вывести пользователей, которые были созданы '2021-07-12 00:00:00' и у которых в имени есть цифра 8*
```sql
SELECT * 
FROM qa_users
WHERE created_on = '2021-07-12 00:00:00' AND username LIKE '%8%';
```
*17. Вывести пользователя, у которого id равен 10*
```sql
SELECT * 
FROM qa_users
WHERE user_id = 10;
```
*18. Вывести пользователя, у которого id равен 53*
```sql
SELECT * 
FROM qa_users
WHERE user_id = 53;
```
*19. Вывести пользователей, у которых id больше 40*
```sql
SELECT * 
FROM qa_users
WHERE user_id > 40;
```
*20. Вывести пользователей, у которых id меньше 30*
```sql
SELECT * 
FROM qa_users
WHERE user_id < 30;
```
*21. Вывести пользователей, у которых id меньше 27 или больше 88*
```sql
SELECT * 
FROM qa_users
WHERE user_id < 27 OR user_id > 88;
```
*22. Вывести пользователей, у которых id меньше либо равно 37*
```sql
SELECT * 
FROM qa_users
WHERE user_id <= 37;
```
*23. Вывести пользователей, у которых id больше либо равно 37*
```sql
SELECT * 
FROM qa_users
WHERE user_id >= 37;
```
*24. Вывести пользователей, у которых id больше 80, но меньше 90*
```sql
SELECT * 
FROM qa_users
WHERE user_id > 80 AND user_id < 90;
```
*25. Вывести пользователей, у которых id между 80 и 90*
```sql
SELECT * 
FROM qa_users
WHERE user_id BETWEEN 80 AND 90;
```
*26. Вывести пользователей, где password равен '12333', '1m313', '123313'*
```sql
SELECT * 
FROM qa_users
WHERE password IN ('12333', '1m313', '123313');
```
*27. Вывести пользователей, где created_on равен '2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00'*
```sql
SELECT * 
FROM qa_users
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
```
*28. Вывести минимальный id*
```sql
SELECT MIN(user_id)
FROM qa_users;
```
*29. Вывести максимальный id*
```sql
SELECT MAX(user_id)
FROM qa_users;
```
*30. Вывести количество пользователей*
```sql
SELECT COUNT(user_id)
FROM qa_users;
```
*31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.*
```sql
SELECT user_id, username, created_on
FROM qa_users
ORDER BY created_on;
```
*32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.*
```sql
SELECT user_id, username, created_on
FROM qa_users
ORDER BY created_on DESC;
```


