# ADB HomeWork-1

*Cценарий и .log файл приложения todolist выгружайте на GitHub.*
1. Отобразить подключённый девайс в консоли.

    ```adb devices```

2. Установить .apk файл приложениия todolist на телефон с компьютера через  ADB

    ```adb install``` C:\Users\Nadine\Desktop\001_ToDoList-master\app\build\outputs\apk\debug\Todolist.apk

3. Вывести адрес приложения todolist в системе Android.

    ```adb shell```
    ```$ pm list packages | grep todolist```

4. Сделать скриншот запущенного приложения todolist и сразу скопировать на компьютер в одной команде.

    ```adb shell screencap``` /storage/emulated/0/DCIM/TodoList/Screenshot01.png

    ```adb pull``` /storage/emulated/0/DCIM/TodoList/Screenshot02.png C:\Users\Nadine\Desktop\ScrFromAndroid.png

    ```
    $ adb shell
    shell@ $ screencap /sdcard/screen.png
    shell@ $ exit
    $ adb pull /sdcard/screen.png
    ```
5. Вывести в консоль логи приложения todolist

    ```adb logcat | findstr com.android.todolist```

6. Вывести логи приложения todolist в файл на компьютер.

    ```adb logcat | findstr com.android.todolist > ```C:\Users\Nadine\Desktop\Todolist.log

7. Удалить приложение todolist с телефона через ADB

    ```adb uninstall com.android.todolist```

---

[Android Debug Bridge (adb) ](https://developer.android.com/studio/command-line/adb)

[Команды adb для Android пользователей](
https://losst.ru/komandy-adb-dlya-android-polzovatelej)