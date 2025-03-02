-- Создание БД
CREATE DATABASE store;

-- Подключение к базе
\c store

-- Создание пользователя
CREATE USER store_user WITH PASSWORD 'password';

-- Выдача прав на БД
GRANT ALL PRIVILEGES ON DATABASE store TO store_user;

-- Выдача прав на схему public
GRANT USAGE, CREATE ON SCHEMA public TO store_user;


