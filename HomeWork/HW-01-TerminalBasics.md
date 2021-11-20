1) Посмотреть где я - `pwd`
2) Создать папку - `mkdir HomeWork`
3) Зайти в папку - `cd HomeWork`
4) Создать 3 папки - `mkdir Folder1 Folder2 Folder3`
5) Зайти в любоую папку - `cd Folder2`
6) Создать 5 файлов (3 txt, 2 json) - `touch File1.txt File2.txt File3.txt index.html style.css script.js` 
7) Создать 3 папки - `mkdir NewF1 NewF2 NewF3`
8. Вывести список содержимого папки - `ls`
***
9) Открыть любой txt файл - `nano File1.txt`
10) написать туда что-нибудь, любой текст - "Команда grep - одна из самых востребованных команд в терминале Linux, которая входит в состав проекта GNU. Секрет популярности - её мощь, она даёт возможность пользователям сортировать и фильтровать текст на основе сложных правил.
"
11) сохранить и выйти. - `^O`, `^X`
12) Выйти из папки на уровень выше - `cd ..`
******
13) переместить любые 2 файла, которые вы создали, в любую другую папку. 
    - `$ mv index.html script.js style.css ~/HomeWork/Folder3` 
14) скопировать любые 2 файла, которые вы создали, в любую другую папку. 
    - `$ cp index.html script.js style.css ~/HomeWork/Folder1`
15) Найти файл по имени `- $ find . -name 'index.html'`
16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает. 
    - `$ grep -r Linux` (слово во всех файлах и папках)
    - `$ grep -i "Linux" File1.txt` (слово в конкретном файле регистронезависимо)
17) вывести несколько первых строк из текстового файла - `$ head -n5 File3.txt`
18) вывести несколько последних строк из текстового файла - `$ tail -n5 File3.txt`
19) просмотреть содержимое длинного файла (команда less) изучите как она работает. 
    - `$ less -N File3.txt` (вывод с нумерацией строк), `:q` - выход
20) вывести дату и время - `$ date`
***

Задание *
1) Отправить http запрос на сервер. - `$ curl https://api.quarantine.country/api/v1/regions`
2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13:
```
touch myscript
nano myscript:
  #!/bin/bash
  cd ScriptFolder
  mkdir Fol-1 Fol-2 Fol-3
  cd Fol-2
  touch File1.txt File2.txt File3.txt index.html style.css script.js
  mkdir NewF1 NewF2 NewF3
  ls
  mv index.html script.js style.css ~/HomeWork/ScriptFolder/Fol-1
chmod +x ./myscript
./myscript
```


