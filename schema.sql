-- Customers table
CREATE TABLE customers (
  customer_id   INT PRIMARY KEY,
  name          VARCHAR(100),
  region        VARCHAR(50)
);

-- Products table
CREATE TABLE products (
  product_id    INT PRIMARY KEY,
  name          VARCHAR(100),
  category      VARCHAR(50)
);

-- Transactions table
CREATE TABLE transactions (
  transaction_id  INT PRIMARY KEY,
  customer_id     INT,
  product_id      INT,
  sale_date       DATE,
  amount          DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert customers
INSERT INTO customers VALUES (1001, 'John Doe', 'Kigali');
INSERT INTO customers VALUES (1002, 'Alice Uwase', 'Huye');
INSERT INTO customers VALUES (1003, 'Eric Ndayisenga', 'Musanze');
INSERT INTO customers VALUES (1004, 'Sarah Mukamana', 'Rubavu');

-- Insert products
INSERT INTO products VALUES (2001, 'Coffee Beans', 'Beverages');
INSERT INTO products VALUES (2002, 'Green Tea', 'Beverages');
INSERT INTO products VALUES (2003, 'Milk Powder', 'Dairy');
INSERT INTO products VALUES (2004, 'Chocolate Bar', 'Snacks');

-- Insert transactions
INSERT INTO transactions VALUES (3001, 1001, 2001, '2025-01-15', 25000.00);
INSERT INTO transactions VALUES (3002, 1002, 2002, '2025-01-20', 18000.00);
INSERT INTO transactions VALUES (3003, 1003, 2001, '2025-02-05', 30000.00);
INSERT INTO transactions VALUES (3004, 1004, 2004, '2025-02-18', 12000.00);
INSERT INTO transactions VALUES (3005, 1001, 2003, '2025-03-10', 20000.00);
INSERT INTO transactions VALUES (3006, 1002, 2001, '2025-03-25', 28000.00);
INSERT INTO transactions VALUES (3007, 1003, 2002, '2025-04-03', 15000.00);
INSERT INTO transactions VALUES (3008, 1004, 2001, '2025-04-15', 32000.00);






