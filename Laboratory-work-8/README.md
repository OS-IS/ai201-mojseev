## Криптографічний захист клієнт-серверної взаємодії в СКБД PostgreSQL
### 1. Встановити OpenSSL-пакет.
![2024-11-25_17-50](https://github.com/user-attachments/assets/474ddf94-e600-4342-8c07-9dfa5ea7a393)

### 2. Створити самопідписаний сертифікат для сервера СКБД PostgreSQL
![2024-11-25_18-06](https://github.com/user-attachments/assets/8432a95d-b5e9-482f-b1b1-acc2b51c5c8f)

### 3. Переглянути вміст сертифікату та визначити алгоритми створення відкритого ключа.
![2024-11-25_18-07](https://github.com/user-attachments/assets/1841260e-7c3d-4caa-8474-bc3d42917cad)

### 4. Скопіювати створений сертифікат відкритого ключа та закритий ключ до каталогу сервера СКБД PostgreSQL.
![2024-11-25_19-08](https://github.com/user-attachments/assets/b777f70d-1c38-4452-8621-8c7ce26772aa)

### 5. Використовуючи програму psql, встановити TSL/SSL-з'єднання з БД
![2024-11-25_20-01](https://github.com/user-attachments/assets/602c7c63-1d9a-4f60-97b9-f26d049f8909)
