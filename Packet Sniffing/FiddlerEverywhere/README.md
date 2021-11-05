# Fiddler HomeWork


*00: Отфильтровать выдачу запросов по нужному ip*
```
Protocol: http
IP: 162.55.220.72
Port: 5005
```
***
*01. Task:*
```
Method: GET
EndPoint: /get_method
request url params: 
 name: str
 age: int

response: 
[
    “Str”,
    “Str”
]
```

Сделать правила:
1. Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
2. Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
***

*02. Task:*
```
Method: POST
EndPoint: /user_info_3
request form data: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'u_salary_1_5_year': salary * 4}}
```

Сделать правила:
1. Подменить тело запроса чтобы поменялся name которые вы вписали в Postman.
2. Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
3. Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
4. Подменить тело запроса чтобы удалился age которые вы вписали в Postman.  (Получить 500 код)
5. В ответе поменять children на neighbors. 
6. В ответе поменять значение зарплаты u_salary_1_5_year на другую цифру. 
7. В ответе удалить параметр salary. 
***

*03. Task:*
```
Method: GET
EndPoint: /object_info_1
request url params: 
 name: str
 age: int
 weight: int

response: 
{'name': name,
          'age': age,
          'daily_food': weight * 0.012,
          'daily_sleep': weight * 2.5}
```

Сделать правила:
1. Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
2. Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
3. Подменить url в чтобы в запросе удалился weight которые вы вписали в Postman.
4. В ответе удалить параметр  daily_food.
5. В ответе поменять значение параметра daily_food на другую цифру. 
6. В ответе переименовать daily_sleep на sleep
7. В ответе поменять значение параметра daily_sleep на другую цифру. 
***

*04. Task:*
```
Method: GET
EndPoint: /object_info_3
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': age,
          'salary': salary,
          'family': {'children': [['Alex', 24], ['Kate', 12]],
                     'pets': {'cat':{'name':'Sunny',
                                     'age': 3},
                              'dog':{'name':'Luky',
                                     'age': 4}},
                     'u_salary_1_5_year': salary * 4}
          }
```

Сделать правила:
1. Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
2. Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
3. Подменить url в чтобы в запросе удалился name которые вы вписали в Postman.
4. В ответе удалить параметр  salary.
5. В ответе поменять значение параметра cat на другой json. 
6. Получить 405 код
***

*05. Task:*
```
Method: GET
EndPoint: /object_info_4
request url params: 
 name: str
 age: int
 salary: int

response: 
{'name': name,
          'age': int(age),
          'salary': [salary, str(salary * 2), str(salary * 3)]}
```
Сделать правила:
1. Подменить url в чтобы в запросе поменялся name которые вы вписали в Postman.
2. Подменить url в чтобы в запросе поменялся age которые вы вписали в Postman. 
3. Подменить url в чтобы в запросе удалился salary которые вы вписали в Postman.
4. В ответе удалить параметр  salary.
5. В ответе поменять значение параметра salary на значение текстового типа. 
6. Получить 405 код
***

*05. Task:*
```
Method: POST
EndPoint: /user_info_2
request form data: 
 name: str
 age: int
 salary: int

response: 
{'start_qa_salary': salary,
          'qa_salary_after_6_months': salary * 2,
          'qa_salary_after_12_months': salary * 2.7,
          'qa_salary_after_1.5_year': salary * 3.3,
          'qa_salary_after_3.5_years': salary * 3.8,
          'person': {'u_name': [user_name, salary, age],
                     'u_age': age,
                     'u_salary_5_years': salary * 4.2}
          }
```
Сделать правила:
1. Подменить тело запроса чтобы поменялся age которые вы вписали в Postman. 
2. Подменить тело запроса чтобы поменялся salary которые вы вписали в Postman. 
3. Подменить тело запроса чтобы удалился salary которые вы вписали в Postman.
4. В ответе поменять qa_salary_after_6_months на qa_salary_after_10_months. 
5. В ответе поменять значение зарплаты qa_salary_after_1.5_year на другую цифру. 
6. В ответе удалить параметр person. 
7. В ответе поменять значение параметр person с json на xml. 

*Все настройки правил Fiddler выгрузить в GitHub*