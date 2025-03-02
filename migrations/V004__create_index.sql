CREATE INDEX orders_status_date_idx ON orders(status, date_created); 
CREATE INDEX idx_order_product_product_id ON order_product(product_id);
CREATE INDEX order_product_order_id_idx ON order_product(order_id); 