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

-- Получение посуточно отправленных заказов за последние 7 дней
SELECT o.date_created, SUM(op.quantity) 
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created; 
