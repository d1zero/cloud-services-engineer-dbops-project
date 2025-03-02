ALTER TABLE product
    ADD COLUMN price DOUBLE PRECISION;

DROP TABLE IF EXISTS product_info;
DROP INDEX IF EXISTS idx_product_info_product_id;

ALTER TABLE orders
    ADD COLUMN date_created DATE DEFAULT CURRENT_DATE;

DROP TABLE IF EXISTS orders_date;
DROP INDEX IF EXISTS idx_orders_date_order_id;