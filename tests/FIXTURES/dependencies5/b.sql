CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price_two DECIMAL(10, 2) NOT NULL
);

CREATE VIEW product_listings AS
SELECT *
FROM products;

CREATE OR REPLACE FUNCTION get_product_listings()
RETURNS SETOF product_listings AS $$
BEGIN
    RETURN QUERY SELECT * FROM product_listings;
END;
$$ LANGUAGE plpgsql;