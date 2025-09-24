

## CUSTOMERS TABLE CREATION
CREATE TABLE customers (
  customer_id   NUMBER PRIMARY KEY,
  name          VARCHAR2(100),
  region        VARCHAR2(50)
);

## PRODUCTS TABLE CREATION
CREATE TABLE products (
  product_id    NUMBER PRIMARY KEY,
  name          VARCHAR2(100),
  category      VARCHAR2(50)
);

## TRANSACTIONS TABLE CREATION
CREATE TABLE transactions (
  transaction_id  NUMBER PRIMARY KEY,
  customer_id     NUMBER REFERENCES customers(customer_id),
  product_id      NUMBER REFERENCES products(product_id),
  sale_date       DATE,
  amount          NUMBER
);

-- Insert sample customers
INSERT INTO customers VALUES (1001, 'John Doe', 'Kigali');
INSERT INTO customers VALUES (1002, 'Alice Uwase', 'Huye');
INSERT INTO customers VALUES (1003, 'Eric Ndayisenga', 'Musanze');
INSERT INTO customers VALUES (1004, 'Sarah Mukamana', 'Kigali');

-- Insert sample products
INSERT INTO products VALUES (2001, 'Coffee Beans', 'Beverages');
INSERT INTO products VALUES (2002, 'Green Tea', 'Beverages');
INSERT INTO products VALUES (2003, 'Milk Powder', 'Dairy');
INSERT INTO products VALUES (2004, 'Chocolate Bar', 'Snacks');

-- Insert sample transactions
INSERT INTO transactions VALUES (3001, 1001, 2001, DATE '2025-01-15', 25000);
INSERT INTO transactions VALUES (3002, 1002, 2002, DATE '2025-01-20', 18000);
INSERT INTO transactions VALUES (3003, 1003, 2001, DATE '2025-02-05', 30000);
INSERT INTO transactions VALUES (3004, 1004, 2004, DATE '2025-02-18', 12000);
INSERT INTO transactions VALUES (3005, 1001, 2003, DATE '2025-03-10', 20000);
INSERT INTO transactions VALUES (3006, 1002, 2001, DATE '2025-03-25', 28000);
INSERT INTO transactions VALUES (3007, 1003, 2002, DATE '2025-04-03', 15000);
INSERT INTO transactions VALUES (3008, 1004, 2001, DATE '2025-04-15', 32000);
COMMIT;




