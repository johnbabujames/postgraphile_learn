-- CREATE TABLE learn.person (
--     id serial PRIMARY KEY,
--     first_name text NOT NULL,
--     last_name text NOT NULL,
--     created_at timestamptz DEFAULT now()
-- );

-- insert
-- 	into
-- 	learn.person (first_name,
-- 	last_name)
-- values 
-- 	('Selva','Mani'),
--     ('Sadeesh','Ramakrishnan'),
--     ('Ram','Subbu');

CREATE TABLE learn.product (
    id         serial PRIMARY KEY,
    product_name    text NOT NULL, 
    price      numeric NOT NULL DEFAULT 0
);

CREATE TABLE learn.bill (
    id       serial PRIMARY KEY,
    bill_name     text NOT NULL, 
    billdate date NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE learn.bill_product (
    id       serial PRIMARY KEY,
    bill_id    int REFERENCES learn.bill (id) ON UPDATE CASCADE ON DELETE CASCADE, 
    product_id int REFERENCES learn.product (id) ON UPDATE CASCADE
);