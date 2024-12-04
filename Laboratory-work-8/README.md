## Криптографічний захист клієнт-серверної взаємодії в СКБД PostgreSQL
### 1. Встановити OpenSSL-пакет.
![2024-11-25_17-50](https://github.com/user-attachments/assets/474ddf94-e600-4342-8c07-9dfa5ea7a393)

### 2. Створити самопідписаний сертифікат для сервера СКБД PostgreSQL.
![2024-11-25_18-06](https://github.com/user-attachments/assets/8432a95d-b5e9-482f-b1b1-acc2b51c5c8f)

### 3. Переглянути вміст сертифікату та визначити алгоритми створення відкритого ключа.
![2024-11-25_18-07](https://github.com/user-attachments/assets/1841260e-7c3d-4caa-8474-bc3d42917cad)

### 4. Скопіювати створений сертифікат відкритого ключа та закритий ключ до каталогу сервера СКБД PostgreSQL.
![2024-11-25_19-08](https://github.com/user-attachments/assets/b777f70d-1c38-4452-8621-8c7ce26772aa)

### 5. Використовуючи програму psql, встановити TSL/SSL-з'єднання з БД.
![2024-11-25_20-01](https://github.com/user-attachments/assets/602c7c63-1d9a-4f60-97b9-f26d049f8909)

### 6. Встановити ПЗ контейнерної віртуалізації Docker та запустити Docker через ваш Docker-обліковий запис.
![2024-11-25_20-20](https://github.com/user-attachments/assets/5a9063a4-8d7a-4be8-990e-e13ecfd8cb52)

### 7. Запустити Docker-контейнер СКБД PostgreSQL.
![2024-11-25_20-23](https://github.com/user-attachments/assets/b1a33c59-3435-4d13-aec3-2c782073f45b)

### 8. У Docker-контейнері встановити програмний пакунок аналізу мережевих пакетів tcpdump. Отримати перелік мережевих інтерфейсів на вашому комп’ютері.
![2024-11-25_20-27](https://github.com/user-attachments/assets/7011926e-957f-4480-9e14-524de0000972)

### 9. Провести запуск програми аналізу мережевих пакетів для кожного мережевого інтерфейсу поки не буде знайдено активний інтерфейс.
![2024-11-25_20-32](https://github.com/user-attachments/assets/63f33110-6649-4a9a-96bd-bd40daaaf07a)

### 10. Запустити програму аналізу мережевих пакетів в режимі прослуховування.
![2024-11-25_20-34](https://github.com/user-attachments/assets/da194363-d555-4ba5-9e19-dd17060a1659)

### 11. Запустити окрему термінальну консоль та становити зв'язок із СКБД PostgreSQL.
![2024-11-25_20-42](https://github.com/user-attachments/assets/39dd1bd9-7b1d-4880-959d-ccd4ed5d0469)

### 12. Виконати команду створення користувача за прикладом з лабораторної роботи.
![2024-11-25_20-43](https://github.com/user-attachments/assets/a75db565-9b4b-4c0d-9503-e9d5792d3921)

### 13. Проаналізувати вміст перехоплених пакетів, які було збережено у файлі res.dump.
![2024-12-04_20-36](https://github.com/user-attachments/assets/3e0aa793-566a-4401-918f-437968574934)
![2024-11-25_21-01](https://github.com/user-attachments/assets/1a9105f0-145e-424b-8c7d-a67b43f17ce5)

### 14. Повторити пункт 11, встановивши зв’язок із СКБД, але вже через TLS/SSL з’єднання.
![2024-12-04_17-24](https://github.com/user-attachments/assets/1eb6df47-b5d3-4c64-87c9-4fc4f156b0ec)

![2024-11-26_10-51](https://github.com/user-attachments/assets/6ccc3dc4-cff1-49d6-9db5-5861b225061b)

