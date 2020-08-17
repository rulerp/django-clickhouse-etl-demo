# django-clickhouse-etl-demo

Использовать только для тестирования!
For testing purposes only!

Приложение для тестирования сценариев по загрузке данных из Django-приложения в хранилище данных. 

## Состав
* Django-приложение (docker-compose.yml / prototype). Прототип django-сайта.
* БД django-приложения (docker-compose.yml / pg_database)
* Генератор пользовательской активности (docker-compose.yml / simulator). Основан на locust.io
* DWH (docker-compose.yml / pg_target_database). База данных, в которую производится регулярная выгрузка
* ELT-оркестровщик (docker-compose.yml / etl). Python-приложение, запускающее процессы по доставке данных в DWH.

## Установка и запуск
```bash
git clone https://github.com/agoloborodko/django-clickhouse-etl-demo.git
cd django-clickhouse-etl-demo
docker-compose up
```

После запуска приложение, целевая база данных (DWH) и симуляция пользовательской активности запустятся автоматически

## Доступ к Django-приложению
Приложение доступно по адесу `localhost:2999`
Оно позволяет регистрировать новых пользователей, добавлять гостевых пользователей, просматривать задачи и отправлять "решения"

## Доступ к БД

Результат работы приложения - таблица mart.prototype в хранилище данных.

Данные для подключения к хранилищу:

* Тип БД: PostgreSQL
* Порт: 1020
* Название БД: prototype_dwh
* Имя пользователя: db_user
* Пароль: db_pass

## Порты
Чтобы приложение запустилось, на сервере должны быть свободны порты 1015, 1020, 2999. Если эти порты не свободны, поменяйте их в файле docker-compose.yml.

## Прочие настройки
Все настройки находятся в файле docker-compose.yml
