# SQL HomeWork-2

```
Подключится к 
Host: 159.69.151.133
Port: 5056
DB: qa_db_2
User: user_22_44
Pass: 123
```
<details>
  <summary>Схема базы данных</summary>
  
  ![drawSQL-emploeesDB](https://user-images.githubusercontent.com/83915765/136953203-86a40d2f-3a8c-4e16-955c-34d0e638b6f9.png)
 </details>

*1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id;
```
*2. Вывести всех работников, у которых ЗП меньше 2000.*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE monthly_salary < 2000;
```
*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно, кто её получает.)*
```sql
SELECT monthly_salary, employee_name
FROM employees_salary
LEFT JOIN employees 
ON employees_salary.employee_id = employees.id
WHERE employee_name IS NULL;
```
*4. Вывести все зарплатные позиции меньше 2000, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*
```sql
SELECT monthly_salary, employee_name
FROM employees_salary
LEFT JOIN employees 
ON employees_salary.employee_id = employees.id
WHERE monthly_salary < 2000 AND employee_name IS NULL;
```
*5. Найти всех работников, кому не начислена ЗП.*
 ```sql
SELECT employee_name, monthly_salary 
FROM employees 
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
WHERE monthly_salary IS NULL;
```
*6. Вывести всех работников с названиями их должности.*
 ```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id;
```
*7. Вывести имена и должность только Java разработчиков.*
```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Java developer%';
```
*8. Вывести имена и должность только Python разработчиков.*
```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Python developer%';
```
*9. Вывести имена и должность всех QA инженеров.*
```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%QA engineer%';
```
*10. Вывести имена и должность ручных QA инженеров.*
```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Manual QA engineer%';
```
*11. Вывести имена и должность автоматизаторов QA*
```sql
SELECT employee_name, role_name 
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Automation QA engineer%';
```
*12. Вывести имена и зарплаты Junior специалистов*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Junior%';
```
*13. Вывести имена и зарплаты Middle специалистов*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Middle%';
```
*14. Вывести имена и зарплаты Senior специалистов*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Senior%';
```
*15. Вывести зарплаты Java разработчиков*
```sql
SELECT monthly_salary
FROM employees_salary
LEFT JOIN employees 
ON employees_salary.employee_id = employees.id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Java developer%';
```
*16. Вывести зарплаты Python разработчиков*
```sql
SELECT monthly_salary
FROM employees_salary
LEFT JOIN employees 
ON employees_salary.employee_id = employees.id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Python developer%';
```
*17. Вывести имена и зарплаты Junior Python разработчиков*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name  = 'Junior Python developer';
```
*18. Вывести имена и зарплаты Middle JS разработчиков*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name  = 'Middle JavaScript developer';
```
*19. Вывести имена и зарплаты Senior Java разработчиков*
```sql
SELECT employee_name, monthly_salary 
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Senior Java developer%';
```
*20. Вывести зарплаты Junior QA инженеров*
```sql
SELECT monthly_salary
FROM employees_salary
INNER JOIN employees 
ON employees_salary.employee_id = employees.id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Junior%QA engineer%';
```
*21. Вывести среднюю зарплату всех Junior специалистов*
```sql
SELECT AVG(monthly_salary)
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Junior%';
```
*22. Вывести сумму зарплат JS разработчиков*
```sql
SELECT SUM(monthly_salary)
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%JavaScript developer%';
```
*23. Вывести минимальную ЗП QA инженеров*
```sql
SELECT MIN(monthly_salary)
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%QA engineer%';
```
*24. Вывести максимальную ЗП QA инженеров*
```sql
SELECT MAX(monthly_salary)
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%QA engineer%';
```
*25. Вывести количество QA инженеров*
```sql
SELECT COUNT(employee_name)
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%QA engineer%';
```
*26. Вывести количество Middle специалистов.*
```sql
SELECT COUNT(employee_name)
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%Middle%';
```
*27. Вывести количество разработчиков*
```sql
SELECT COUNT(employee_name)
FROM employees 
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%developer%';
```
*28. Вывести фонд (сумму) зарплаты разработчиков.*
```sql
SELECT SUM(monthly_salary)
FROM employees 
INNER JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE role_name LIKE '%developer%';
```
*29. Вывести имена, должности и ЗП всех специалистов по возрастанию*
```sql
SELECT employee_name, role_name, monthly_salary 
FROM employees 
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
ORDER BY monthly_salary;
```
*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП от 1700 до 2300*
```sql
SELECT employee_name, role_name, monthly_salary 
FROM employees 
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE monthly_salary BETWEEN 1700 AND 2300
ORDER BY monthly_salary;
```
*31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП меньше 2300*
```sql
SELECT employee_name, role_name, monthly_salary 
FROM employees 
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE monthly_salary < 2300
ORDER BY monthly_salary;
```
*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов, у которых ЗП равна 1100, 1500, 2000*
```sql
SELECT employee_name, role_name, monthly_salary 
FROM employees 
LEFT JOIN employees_salary
ON employees.id = employees_salary.employee_id
INNER JOIN roles_employees 
ON employees.id = roles_employees.employee_id
INNER JOIN roles
ON roles.id = roles_employees.role_id
WHERE monthly_salary IN (1100, 1500, 2000)
ORDER BY monthly_salary;
```


